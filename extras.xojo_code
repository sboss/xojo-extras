#tag Module
Protected Module extras
	#tag Method, Flags = &h0
		Function paddedLeft(extends s as string, width as integer) As string
		  
		  if s.len >= width then return s
		  
		  while s.len < width
		    s = chr( 32 ) + s
		    
		  wend
		  
		  Return s
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function paddedRight(extends s as string, width as integer) As string
		  
		  if s.len >= width then return s
		  
		  while s.len < width
		    s = s + chr( 32 )
		    
		  wend
		  
		  Return s
		End Function
	#tag EndMethod


	#tag Constant, Name = kVersion, Type = String, Dynamic = False, Default = \"20151202", Scope = Public
	#tag EndConstant


	#tag ViewBehavior
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
	#tag EndViewBehavior
End Module
#tag EndModule
