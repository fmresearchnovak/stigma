import tkinter as tk
from tkinter import ttk
import subprocess
import platform
import sys

from lib import SmaliClassDef
from lib import SmaliCodeBase


import StigmaState
import Stigma


# originally based on this example: https://www.pythontutorial.net/tkinter/tkinter-treeview/

class UI:		
	'''This class creates a visual GUI using tkinter
	which shows the class hierarchy of a given set of SmaliFiles
	The class hierarchy is based on the class definitions given on the first
	line of each smali file.'''
	
	def __init__(self, smali_files):
		'''The constructor
		Parameters:
			smali_files: A list of absolute paths to smali files (a list of strings) as provided by SmaliCodeBase.findSmaliFiles
		Returns:
			A UI instance (to call launch() on)
		'''
		print("Building Tree...")
		self.smali_files = smali_files
		
		
		#self.classes = []
		iid = 0						 # abs_path, name, iid for tkinter, parent_iid
		self.forest = SmaliClassNameTree(None, "root", iid, None) # one tree to contain all others
		
		for i, path in enumerate(self.smali_files):
			# Print Progress
			print(f'...{str(i)}/{str(len(self.smali_files))}', end='\r')

			# print("cur file path: " + str(name)
			# parse file
			#scd = SmaliClassDef.SmaliClassDef(path)
			#scd.internal_class_names.extend(class_names)
			#self.classes.append(scd)
			
			cur_level_node = self.forest
			
			parts = SmaliClassDef.SmaliClassDef.extract_class_name_from_file(path).split("/")
			for i in range(len(parts)):
				iid += 1
				cur_name = parts[i]
				cur_level_node = cur_level_node.plant_new_tree_for_class(path, cur_name, iid)
			
		#print(self.forest)
		
		
		
	def launch(self):
		'''Launches the GUI after the constructor has been called.'''
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
			item = tktree.insert('', tk.END, text=cur_tree.pkg_name_piece, values=[cur_tree.abs_path], iid = cur_tree.iid, open=False)
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
		'''Callback to open a file when double-clicked'''
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
		



class SmaliClassNameTree:
	'''A class to represent a set of smali classes in tree based on their 
	package names.  A recursively implemented tree.  Each tree is a node with 
	a list of children which are other SmaliClassNameTree instances.
	'''

	def __init__(self, abs_path, pkg_name_piece, new_iid, new_parent_iid):
		'''The constructor
		Parameters:
			abs_path: The absolute path to a given smali file.  This may be just a leaf along this branche's path. A string.
			pkg_name_piece: The package name "segment" or piece" for this section of the tree. A string.
			For example if the package name is "edu/fandm/enovak/" then "fandm" might be the package name piece.
			new_iid: An id for this tree node
			new_parent_idd: The id of the parent of this tree node.
		Returns:
			A SmaliClassNameTree instance
		'''
		self.abs_path = abs_path
		self.pkg_name_piece = pkg_name_piece
		self.iid = new_iid
		self.parent_iid = new_parent_iid
		
		self.children = []
		self.new_child_num = 0
		
		
	def add_child(self, new_child): # child should be another SmaliClassNameTree
		'''Adds a child SmaliClassNameTree to this tree.
		Parameters:
			new_child: A SmaliClassNameTree
			Note, the given child should be a child according to the package names.
			That is for a package like edu/fandm/enovak/file1.smali and edu/fandm/ksmith/file2.smali
			fandm is a child of edu, but file1 is not a child of ksmith, etc.
		Returns:
			None'''
		new_child.relative_position = self.new_child_num
		self.new_child_num += 1
		self.children.append(new_child)
		
		
		
	def __contains__(self, pkg_name_piece): # class_name should be a string
		# supports the "in" keyword
		''' Supports the "in" keyword in python, determines if a given pkg_name_piece" is "in" this tree (or it's subtrees)
		Parameters: 
			pkg_name_piece: the package name segment (e.g., "fandm" in edu/fandm/enovak), a string.
		Returns:
			True if the given pkg_name_piece is in this tree or it's sub-trees / children.  False otherwise.
		'''
		if(self.pkg_name_piece == pkg_name_piece):
			return True
		
		is_found = False
		for child_tree in self.children:
			is_found = is_found or child_tree.__contains__(pkg_name_piece)
			
		return is_found
		
		
	def __getitem__(self, pkg_name_piece):
		'''Supports the [] index operator in python
		Returns a tree and it's sub-tree based on the package name piece
		Parameters: 
			pkg_name_piece: The package name segment (e.g., "fandm" in edu/fandm/enovak), a string
		Returns:
		 	A SmaliClassNameTree instance containing that package name segment and all associated children / subtrees.
		'''
		if(self.pkg_name_piece == pkg_name_piece):
			return self
			
		target = None
		for child_tree in self.children:
			result = child_tree.__getitem__(pkg_name_piece)
			if(result != None):
				target = result
				
		return target
		
		
	def plant_new_tree_for_class(self, abs_path, pkg_name_piece, new_iid):
		'''Inserts new tree node in the correct area of this tree (following package names)
		Parameters:
			abs_path: The absolute file path (useful only for leaf nodes), a string such as /tmp/edu/fandm/enovak/File1.txt", a string
			pkg_name_piece: A segment of this tree's package name (e.g., "enovak"), a string
			new_idd: the ID of this tree to be inserted, an int
		Returns:
			The new tree, a SmaliClassNameTree instance
		'''
		existing_tree = self[pkg_name_piece]
		if existing_tree != None:
			return existing_tree
			
		else:  							# abs path to file, name    iid		parent's iid
			new_tree = SmaliClassNameTree(abs_path, pkg_name_piece, new_iid, self.iid)
			self.add_child(new_tree)
			return new_tree
			
			
	def __str__(self):
		''' Supports the python str() operator
		Returns the entire tree and it's subtrees as a string recursively.
		Tree strings are based on pkg_name_piece and id number
		'''
		# put in newlines
		s = "\n" + self.pkg_name_piece + "  iid: " + str(self.iid)
		for child in self.children:
			s = s + str(child)
		return s
		
	def __repr__(self):
		'''Same as str() but excludes newlines'''
		# DON't put in newlines
		s = self.pkg_name_piece + "  iid: " + str(self.iid)
		for child in self.children:
			s = s + str(child)
		return s



def main():

	APK = sys.argv[1]
	
	temp_APK = StigmaState.Environment().get_temp_file()
	print("Temp files at: " + str(temp_APK.name))
	
	Stigma.dumpApk(APK)
	files = SmaliCodeBase.SmaliCodeBase.findSmaliFiles(temp_APK.name)
	print("len(files):", len(files))
	ui = UI(files)
	ui.launch()




if __name__ == "__main__":
	main()