
class SmaliClassNameTree:

	def __init__(self, class_name, new_iid):
		self.iid = new_iid
		self.class_name = class_name
		self.children = []
		
		
	def add_child(self, new_child): # child should be another SmaliClassNameTree
		self.children.append(new_child)
		
		
	def __getitem__(self, class_name):
		for tree in self.children:
			if(tree.class_name == class_name):
				return tree
				
				
	def __contains__(self, class_name):
		for tree in self.children:
			if(tree.class_name == class_name):
				return True
		return False
		
		
	def plant_new_tree(self, class_name, new_iid):
		if class_name in self:
			return self[class_name]
		else:
			new_tree = SmaliClassNameTree(class_name, new_iid)
			self.children.append(new_tree)
			return new_tree
			
			
	def __str__(self):
		s = "\n" + self.class_name + "  iid: " + str(self.iid)
		for child in self.children:
			s = s + str(child)
		return s
		
	def __repr__(self):
		return str(self)
