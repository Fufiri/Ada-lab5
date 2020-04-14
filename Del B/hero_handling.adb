with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Float_Text_Io; use Ada.Float_Text_Io;
with String_Handling; use String_Handling;

package body Hero_Handling is
   
   
   ----------------------------------------
 --  package Sex_IO is new Ada.Text_IO.Enumeration_IO(Sex_Type);
procedure Get(Item: out Hero_Type) is
   
   ST: String_Type;
   I: Integer;
   F: Float;
   
begin
   
   Put("Välj ett namn på din hjälte: ");
   Get(ST);
   Item.Name := ST;
   
   Put("Ålder: ");
   Get(I);
   Item.Age := I;
   
   Put("Kön (Male, Female, Other): ");
   Get(Item.Sex);
   --Item.Sex := Sex_Type'Value(ST.Text(1..ST.Length));
   
   Put("Vikt: ");
   Ada.Float_Text_Io.Get(F);
   Item.Weight := F;
  
   Put("Hårfärg: ");
   Get(ST);
   Item.HColor := ST;
   
 --  Put("Ras (Human, Elf, Orc, Halfling, Ogre, Lizardman): ");
 --  Get(ST);
 --  Item.Species := Species_Type'Value(ST.Text(1..ST.Length));
   
 --  Put("Ögonfärg (Blue, Green, Brown, Gray, Yellow, Red, Black, Crazy): ");
 --  Get(ST);
 --  Item.EyeC := Eye_Type'Value(ST.Text(1..ST.Length));
   
end Get;
-----------------------------------------   
-----------------------------------------
procedure Put(Item: in Hero_Type) is
   
   XT: String_type;
 --  ST: Species_Type;
 --  EC: Eye_Type;
   
begin
   
   Put("Namn: ");
   Put(Item.Name);
   
   New_Line;
   Put("Ålder: ");
   Put(Item.Age, Width =>0);
   
   New_Line;
   Put("Kön: ");
   XT := Item.Sex;
   Put(Item.Sex);
  -- Put(Sex_Type'Image(XT));
   
   New_Line;
   Put("Vikt: ");
   Ada.Float_Text_Io.Put(Item.Weight, 0, 1, 0);
   
   New_Line;
   Put("Hårfärg: ");
   Put(Item.HColor);
   
  -- New_Line;
  -- Put("Ras: ");
  -- ST := Item.Species;
  -- Put(Species_Type'Image(ST));
   
  -- New_Line;
  -- Put("Ögonfärg: ");
  -- EC := Item.EyeC;
  -- Put(Eye_Type'Image(EC));
		      		      
end Put;
-----------------------------------------
-----------------------------------------
function Age(Item: in Hero_Type) return Integer is
   
begin
   
   return Item.Age;
   
end Age;
---------------------------------------
   
end Hero_Handling;
