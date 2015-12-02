#tag Module
Protected Module extras
	#tag Method, Flags = &h0
		Function paddedRight(extends s as string, width as integer) As string
		  
		  if s.len >= width then return s
		  
		  while s.len < width
		    s = s + chr( 32 )
		    
		  wend
		  
		  Return s
		End Function
	#tag EndMethod


	#tag Constant, Name = kVersion, Type = String, Dynamic = False, Default = \"20151201", Scope = Public
	#tag EndConstant


End Module
#tag EndModule
