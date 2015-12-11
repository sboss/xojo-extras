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
		Sub isEven01Test()
		  dim intInput as integer = 5
		  
		  
		  Assert.IsFalse( intInput.isEven )
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub isEven02Test()
		  dim intInput as integer = 4
		  
		  
		  Assert.IsTrue( intInput.isEven )
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub isEven03Test()
		  dim dblInput as double = 5.0
		  
		  
		  Assert.IsFalse( dblInput.isEven )
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub isEven04Test()
		  dim dblInput as double = 4.0
		  
		  
		  Assert.IsTrue( dblInput.isEven )
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub isEven05Test()
		  dim dblInput as double = 5.23
		  
		  
		  Assert.IsFalse( dblInput.isEven )
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub isEven06Test()
		  dim dblInput as double = 4.23
		  
		  
		  Assert.IsTrue( dblInput.isEven )
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

	#tag Method, Flags = &h0
		Sub plusplus01Test()
		  dim intInput as integer = 5
		  dim intOutput as integer = 6
		  
		  Assert.AreEqual( intOutput,intInput.plusplus )
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub plusplus02Test()
		  dim dblInput as double = 5.0
		  dim dblOutput as double = 6.0
		  
		  Assert.AreEqual( dblOutput,dblInput.plusplus )
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub shift01Test()
		  dim strInput() as string = array( "Donec","aliquet","faucibus","nisi","sed" )
		  dim strOutput as string = "Donec"
		  
		  Assert.AreEqual( strOutput,strInput.shift )
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub shift02Test()
		  dim intInput() as integer = array( 1,2,3,4,5,6 )
		  dim intOutput as integer = 1
		  
		  Assert.AreEqual( intOutput,intInput.shift )
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub shift03Test()
		  dim dblInput() as double = array( 1.1,2.2,3.3,4.4,5.5,6.0 )
		  dim dblOutput as double = 1.1
		  
		  Assert.AreEqual( dblOutput,dblInput.shift )
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
