
class SmaliClassNameTree:

	def __init__(self, scd, pkg_name_piece, new_iid, new_parent_iid):
		self.scd = scd
		self.pkg_name_piece = pkg_name_piece
		self.iid = new_iid
		self.parent_iid = new_parent_iid
		
		self.children = []
		self.new_child_num = 0
		
		
	def add_child(self, new_child): # child should be another SmaliClassNameTree
		new_child.relative_position = self.new_child_num
		self.new_child_num += 1
		self.children.append(new_child)
		
		
		
	def __contains__(self, pkg_name_piece): # class_name should be a string
		# supports the "in" keyword
		if(self.pkg_name_piece == pkg_name_piece):
			return True
		
		is_found = False
		for child_tree in self.children:
			is_found = is_found or child_tree.__contains__(pkg_name_piece)
			
		return is_found
		
		
	def __getitem__(self, pkg_name_piece):
		if(self.pkg_name_piece == pkg_name_piece):
			return self
			
		target = None
		for child_tree in self.children:
			result = child_tree.__getitem__(pkg_name_piece)
			if(result != None):
				target = result
				
		return target
		
		
	def plant_new_tree_for_class(self, scd, pkg_name_piece, new_iid):
		existing_tree = self[pkg_name_piece]
		if existing_tree != None:
			return existing_tree
			
		else:  							# scd		name		iid		parent's iid
			new_tree = SmaliClassNameTree(scd, pkg_name_piece, new_iid, self.iid)
			self.add_child(new_tree)
			return new_tree
			
			
	def __str__(self):
		# put in newlines
		s = "\n" + self.pkg_name_piece + "  iid: " + str(self.iid)
		for child in self.children:
			s = s + str(child)
		return s
		
	def __repr__(self):
		# DON't put in newlines
		s = self.pkg_name_piece + "  iid: " + str(self.iid)
		for child in self.children:
			s = s + str(child)
		return s
