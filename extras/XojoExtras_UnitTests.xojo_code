#tag Class
Protected Class XojoExtras_UnitTests
Inherits TestGroup
	#tag Method, Flags = &h0
		Sub chomp01Test()
		  dim strInput as string = "Donec aliquet faucibus nisi, sed" + EndOfLine.Windows
		  dim strOutput as string = "Donec aliquet faucibus nisi, sed"
		  
		  Assert.AreEqual( strOutput,strInput.chomp )
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub chomp02Test()
		  dim strInput as string = "Donec aliquet faucibus nisi, sed" + EndOfLine.UNIX
		  dim strOutput as string = "Donec aliquet faucibus nisi, sed"
		  
		  Assert.AreEqual( strOutput,strInput.chomp )
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub chomp03Test()
		  dim strInput as string = "Donec aliquet faucibus nisi, sed" + EndOfLine.Macintosh
		  dim strOutput as string = "Donec aliquet faucibus nisi, sed"
		  
		  Assert.AreEqual( strOutput,strInput.chomp )
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub chomp04Test()
		  dim strInput as string = "Donec aliquet faucibus nisi, sed" + EndOfLine.Windows +EndOfLine.Windows
		  dim strOutput as string = "Donec aliquet faucibus nisi, sed"
		  
		  Assert.AreEqual( strOutput,strInput.chomp )
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub chomp05Test()
		  dim strInput as string = "Donec aliquet faucibus nisi, sed" + EndOfLine.UNIX + EndOfLine.UNIX
		  dim strOutput as string = "Donec aliquet faucibus nisi, sed"
		  
		  Assert.AreEqual( strOutput,strInput.chomp )
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub chomp06Test()
		  dim strInput as string = "Donec aliquet faucibus nisi, sed" + EndOfLine.Macintosh + EndOfLine.Macintosh
		  dim strOutput as string = "Donec aliquet faucibus nisi, sed"
		  
		  Assert.AreEqual( strOutput,strInput.chomp )
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub mid01Test()
		  dim strInput as string = "Donec aliquet faucibus nisi, sed"
		  dim strOutput as string = "faucibus"
		  
		  Assert.AreEqual( strOutput,strInput.mid( 14,8 ) )
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub mid02Test()
		  dim strInput as string = "Donec aliquet faucibus nisi, sed"
		  dim strOutput as string = "faucibus nisi, sed"
		  
		  Assert.AreEqual( strOutput,strInput.mid( 14,30 ) )
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub mid03Test()
		  dim strInput as string = "Donec aliquet faucibus nisi, sed"
		  dim strOutput as string = ""
		  
		  Assert.AreEqual( strOutput,strInput.mid( 60,3 ) )
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub paddedLeft01Test()
		  dim strInput as string = "Donec aliquet faucibus nisi, sed"
		  dim strOutput as string = "     Donec aliquet faucibus nisi, sed"
		  
		  Assert.AreEqual( strOutput,strInput.paddedLeft( 37 ) )
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub paddedRight01Test()
		  dim strInput as string = "Donec aliquet faucibus nisi, sed"
		  dim strOutput as string = "Donec aliquet faucibus nisi, sed     "
		  
		  Assert.AreEqual( strOutput,strInput.paddedRight( 37 ) )
		End Sub
	#tag EndMethod


	#tag ViewBehavior
		#tag ViewProperty
			Name="Duration"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="FailedTestCount"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IncludeGroup"
			Group="Behavior"
			InitialValue="True"
			Type="Boolean"
		#tag EndViewProperty
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
			Name="PassedTestCount"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RunTestCount"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="SkippedTestCount"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TestCount"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
