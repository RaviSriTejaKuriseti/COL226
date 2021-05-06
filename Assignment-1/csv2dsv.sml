exception emptyInputFile

fun readfromfile(filename)=
	if (String.compare(TextIO.input(TextIO.openIn(filename)),"")=EQUAL) then raise emptyInputFile
	else 
	implode(explode(TextIO.input(TextIO.openIn(filename))));


fun pt(x)=
	print(Int.toString(Array.sub(x,0)));

fun assemble(L,delim1,delim2,M)=
	
	if(length L=0) then []
	else
		let 
			val w=List.nth(L,0)
			val x=Char.toString(List.nth(L,0))
			val z=Char.toString(delim2)
			
		in 
			if(Char.compare(w,chr(34))=EQUAL) then Array.update(M,0,Array.sub(M,0)+1) else Array.update(M,0,Array.sub(M,0));
			
		
			if(Char.compare(w,delim1)=EQUAL) then
				if(Array.sub(M,0) mod 2=0) then delim2::assemble(List.drop(L,1),delim1,delim2,M) else delim1::assemble(List.drop(L,1),delim1,delim2,M)
			else w::assemble(List.drop(L,1),delim1,delim2,M)
		end;



(*Don't edit  below code*)
fun writetofile(filename,str)=
	let 
	val x=TextIO.openOut filename
in 
	TextIO.output(x,str);
	TextIO.closeOut x
end;
	


fun convertDelimiters(infilename,delim1,outfilename,delim2)=
	let 
		val z=readfromfile(infilename)

	in 
		writetofile(outfilename,implode(assemble(explode(z),delim1,delim2,Array.array(1,0))))
	end;
	
fun csv2tsv(infilename,outfilename)=
	convertDelimiters(infilename,#",",outfilename,#"\t");

fun tsv2csv(infilename,outfilename)=
	convertDelimiters(infilename,#"\t",outfilename,#",");
