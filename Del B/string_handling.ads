package String_Handling is
   
   type String_Type is private;
   
   procedure Get(Item: out String_Type);
   procedure Put(Item: in String_Type);
   
private
   
    type String_Type is 
     record
      Text : String(1..256);
      Length : Integer;
     end record;
    
end String_Handling;
