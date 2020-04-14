with Ada.Text_IO; use Ada.Text_Io;

package body String_Handling is
   
---------------------------------------
procedure Get(Item: out String_Type) is
   
begin
   for I in 1..256 loop
      Get(Item.Text(I));
      exit when End_Of_Line = True;
      
      Item.Length := I+1;
   end loop;
end Get;
---------------------------------------
---------------------------------------
procedure Put(Item: in String_type) is
	 
begin
   for I in 1..Item.Length loop
      Put(Item.Text(I));
   end loop;
   
end Put;
---------------------------------------

end String_Handling;
