import tkinter as tk
from tkinter import ttk
from tkinter.messagebox import showinfo

import SmaliClassDef
import SmaliClassNameTree

# originally based on this example: https://www.pythontutorial.net/tkinter/tkinter-treeview/

class UI:
	
	def __init__(self, smali_files):
		self.smali_files = smali_files
		
		
		self.classes = []
		iid = 0
		self.forest = SmaliClassNameTree.SmaliClassNameTree("root", iid) # one tree to contain all others
		
		for path in self.smali_files:
			# print("cur file path: " + str(name)
			# parse file
			scd = SmaliClassDef.SmaliClassDef(path)
			#scd.internal_class_names.extend(class_names)
			self.classes.append(scd)
			
			cur_level_node = self.forest
			parts = scd.class_name.split("/")
			for i in range(len(parts)):
				iid += 1
				cur_name = parts[i]
				cur_level_node = cur_level_node.plant_new_tree(cur_name, iid)
			
		print(self.forest)
			
		
		
	def launch(self):
		
		# create root window
		self.root = tk.Tk()
		self.root.title('Treeview Demo - Hierarchical Data')
		self.root.geometry('400x200')

		# configure the grid layout
		self.root.rowconfigure(0, weight=1)
		self.root.columnconfigure(0, weight=1)


		# create a treeview
		tree = ttk.Treeview(self.root)
		tree.heading('#0', text='Smali Classes', anchor=tk.W)

		# adding data
		for i in range(len(self.classes)):
			scd = self.classes[i]
			tree.insert('', tk.END, text=scd.class_name, iid=i, open=False)
			
			
		# adding children of first node
		i += 1
		tree.insert('', tk.END, text='John Doe', iid=i, open=False)
		i += 1
		tree.insert('', tk.END, text='Jane Doe', iid=i, open=False)
		tree.move(5, 0, 0)
		tree.move(6, 0, 1)

		# place the Treeview widget on the root window
		tree.grid(row=0, column=0, sticky=tk.NSEW)
		
		
		# run the app
		self.root.mainloop()

