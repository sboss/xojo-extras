#tag Module
Protected Module extras
	#tag Method, Flags = &h0
		Function average(extends d() as double) As double
		  if d = NIL then return 0
		  
		  dim dblTemp as double
		  dim intCounter as integer =0 
		  for each number as double in d
		    dblTemp = dblTemp + number
		    intCounter= intCounter+1
		    
		  next
		  
		  if intCounter = 0 then return 0
		  
		  return ( dblTemp / intCounter )
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function average(extends i() as integer) As double
		  if i = NIL then return 0
		  
		  dim intTemp as integer
		  dim intCounter as integer =0 
		  for each number as integer in i
		    intTemp = intTemp + number
		    intCounter= intCounter+1
		    
		  next
		  
		  if intCounter = 0 then return 0
		  
		  return ( intTemp / intCounter )
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function chomp(extends s as string) As string
		  
		  if s.right( 2 ) = chr( 13 ) + chr( 10 )  then 
		    s = s.Left( s.Len-2 )
		    s = s.chomp
		  elseif s.right( 1 ) = chr( 13 ) then 
		    s = s.Left( s.Len-1 )
		    s = s.chomp
		  elseif s.right( 1 ) = chr( 10 ) then 
		    s = s.Left( s.Len-1 )
		    s = s.chomp
		  end if
		  
		  return s
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function isEven(extends d as double) As boolean
		  
		  if d mod 2 = 0 then return true
		  
		  return false
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function isEven(extends i as integer) As boolean
		  
		  if i mod 2 = 0 then return true
		  
		  return false
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function mid(extends s as string, start as integer, width as integer) As string
		  if start > s.len then return ""
		  
		  return s.right( s.len-start ).left( width )
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function minusminus(extends d as double) As double
		  return d - 1
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function minusminus(extends i as integer) As integer
		  return i - 1
		End Function
	#tag EndMethod

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

	#tag Method, Flags = &h0
		Function plusplus(extends d as double) As double
		  return d + 1
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function plusplus(extends i as integer) As integer
		  return i + 1
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function push(extends d() as double, numbers() as double) As double()
		  for each number as double in numbers
		    d.Append number
		  next
		  return d
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function push(extends d() as double, number as double) As double()
		  d.append number
		  
		  return d
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function push(extends i() as integer, numbers() as integer) As integer()
		  for each number as integer in numbers
		    i.Append number
		  next
		  
		  return i
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function push(extends i() as integer, number as integer) As integer()
		  i.append number
		  return i
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function push(extends s() as string, items() as string) As string()
		  for each item as string in items
		    s.Append item
		  next
		  
		  return s
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function push(extends s() as string, item as string) As string()
		  s.append item
		  return s
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function shift(extends d() as double) As double
		  if d.Ubound > 0 then
		    dim dblRetVal as double = d( 0 )
		    d.Remove( 0 )
		    return dblRetVal
		  end
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function shift(extends i() as integer) As integer
		  if i.Ubound > 0 then
		    dim intRetVal as integer = i( 0 )
		    i.Remove( 0 )
		    return intRetVal
		  end
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function shift(extends s() as string) As string
		  if s.Ubound > 0 then
		    dim strRetVal as string = s( 0 )
		    s.Remove( 0 )
		    return strRetVal
		  end
		End Function
	#tag EndMethod


	#tag Constant, Name = kVersion, Type = String, Dynamic = False, Default = \"20151211", Scope = Public
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
