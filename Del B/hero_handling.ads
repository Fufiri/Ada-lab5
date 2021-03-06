with Ada.Integer_Text_Io; use Ada.Integer_Text_Io;
with Ada.Float_Text_Io; use Ada.Float_Text_Io;
with String_Handling; use String_Handling;

package Hero_Handling is
   
   type Hero_Type is private;
   
   procedure Get(Item: out Hero_Type);
   procedure Put(Item: in Hero_Type);
   function Age(Item: in Hero_Type) return Integer;
   
   
private
   
 --  type Sex_Type is (Male, Female, Other);   
 --  type Species_Type is (Human, Elf, Orc, Halfling, Ogre, Lizardman);
 --  type Eye_Type is (Blue, Green, Brown, Gray, Yellow, Red, Black, Crazy); 
   type Hero_Type is
      record
	 Name : String_Type;
	 Age : Integer;
	 Sex : String_Type;
	 Weight : Float;
	 HColor : String_Type;
--	 Species : Species_Type;
--	 EyeC : Eye_Type;
      end record;
   
end Hero_Handling;
