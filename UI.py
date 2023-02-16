import tkinter as tk
from tkinter import ttk
from tkinter.messagebox import showinfo
import subprocess
import platform

import SmaliClassDef
import SmaliClassNameTree


# originally based on this example: https://www.pythontutorial.net/tkinter/tkinter-treeview/

class UI:
	
	def __init__(self, smali_files):
		self.smali_files = smali_files
		
		
		#self.classes = []
		iid = 0											# scd, name, iid for tkinter, parent_iid
		self.forest = SmaliClassNameTree.SmaliClassNameTree(None, "root", iid, None) # one tree to contain all others
		
		for path in self.smali_files:
			# print("cur file path: " + str(name)
			# parse file
			scd = SmaliClassDef.SmaliClassDef(path)
			#scd.internal_class_names.extend(class_names)
			#self.classes.append(scd)
			
			cur_level_node = self.forest
			parts = scd.class_name.split("/")
			for i in range(len(parts)):
				iid += 1
				cur_name = parts[i]
				cur_level_node = cur_level_node.plant_new_tree_for_class(scd, cur_name, iid)
			
		#print(self.forest)
		
		
		
	def launch(self):
		print("Launching UI...")
		
		# create root window
		self.root = tk.Tk()
		self.root.title('Treeview Demo - Hierarchical Data')
		self.root.geometry('400x200')
		self.root.configure(bg='blue')

		# configure the grid layout
		self.root.rowconfigure(0, weight=1)
		self.root.columnconfigure(0, weight=1)


		# create a treeview
		tktree = ttk.Treeview(self.root)
		tktree.heading('#0', text='Smali Classes', anchor=tk.W)
		
		
		# BFS traversal of tree
		queue = [self.forest]
		while(len(queue) != 0):
			#print("queue: " + str(queue))
			
			cur_tree = queue.pop(0) # pops from left side of list
			#print("cur tree:", cur_tree, "   queue length:", len(queue))
			#print("cur_tree.scd (", type(cur_tree.scd), "): ", cur_tree.scd)
			#
			# I intentionally put the full scd object into the values list here, but 
			# it seems that the tkinter framework converts it to a string (propably via the repr() function)
			# luckily, that string is the absolute filename, which is all I need!
			item = tktree.insert('', tk.END, text=cur_tree.pkg_name_piece, values=[cur_tree.scd], iid = cur_tree.iid, open=False)
			if(cur_tree.iid != 0):
				tktree.move(cur_tree.iid, cur_tree.parent_iid, cur_tree.relative_position)
				
			for child in cur_tree.children:
				queue.append(child)
			
			
		
		'''
		for i in range(len(forest)):
			
		# adding data
		for i in range(len(self.classes)):
			scd = self.classes[i]
			tree.insert('', tk.END, text=scd.class_name, iid=i, open=False)
			# re-arrange nodes to follow hierarchy of names
			
		
		
		# adding children of first node
		i += 1
		tree.insert('', tk.END, text='John Doe', iid=i, open=False)
		i += 1
		tree.insert('', tk.END, text='Jane Doe', iid=i, open=False)
		tree.move(5, 0, 0)
		tree.move(6, 0, 1)
		'''

		# place the Treeview widget on the root window
		tktree.grid(row=0, column=0, sticky=tk.NSEW)
		
		
		# Constructing vertical scrollbar
		# with treeview, based on this:
		# https://www.geeksforgeeks.org/python-tkinter-treeview-scrollbar/
		verscrlbar = ttk.Scrollbar(self.root,
								orient ="vertical",
								command = tktree.yview)
		 
		# Configuring treeview
		tktree.configure(yscrollcommand = verscrlbar.set)
		verscrlbar.grid(row=0, column=1, sticky=tk.NSEW)
		
		
		# set the double-click binding (so we can open files)
		tktree.bind("<Double-Button-1>", UI.onClickOpenFile)
		
		
		# run the app
		self.root.mainloop()
		
	
	@staticmethod
	def onClickOpenFile(event):
		#print("double clicked it!")
		#print("event:", event)
		#print("widget:", event.widget)
		
		item_id = event.widget.focus()
		item = event.widget.item(item_id)
		#print("item id:", item_id, "   item:", item);
		
		abs_path = item["values"][0]
		#print("abs_path (", type(abs_path), "): ", abs_path)
		if(item["text"].endswith(";")):
			if(platform.system()=='Linux'):
				cmd = ["xdg-open", abs_path]
			elif(platform.system()=='Darwin'):
				cmd = ["open", abs_path]
			#print(cmd)
			completed_process = subprocess.run(cmd)
			completed_process.check_returncode()
		
		

