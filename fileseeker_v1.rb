#!/usr/bin/env ruby

class Files1
	def getList (path)
		files = Array.new
		#enter into a folder	
		list = Dir.entries(path)
		for i in 1...list.size
		  if list[i].include? "JPG"
		    puts list[i]
		  elsif list[i].include? "jpg"
		    puts list[i]
	    end #end if
	  end #end for
	end #end def
	
	##################
	
	def getFolder
	  	home = "/Users/em/Dropbox/img/"
	  	subfolder = ""
	  	folders = Dir.entries(home)
	  	
	  	#puts folders.size
	  	for i in 1...folders.size
	  	  if folders[i] == ".."
	  	  elsif folders[i] == ".DS_Store"
	  	  else
	  	    subfolder = home+folders[i]
	  	    Dir.chdir subfolder
	  	    puts subfolder
	  	    getList(subfolder)
  	    end
	  	end
	
  end #end def
	
end #end class


files = Files1.new
#files.getList('/Users/em/Dropbox/img/4thofJuly')
files.getFolder