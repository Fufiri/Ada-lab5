with Ada.Text_IO;			use Ada.Text_IO;
with Hero_Handling;                     use Hero_Handling;
with String_Handling;                   use String_Handling;

package Sorted_Hero_List is
  type e_type is private;
  type List_Type is private;
  Null_Error: exception;
procedure Insert(List: in out list_type; Item: in Hero_Type);
function Empty(List: in list_type) return boolean;
function Length(List: in list_type) return natural;
procedure Put(list: in list_type);
function Member(list: in list_type; item: in Hero_Type) return boolean;
procedure Remove(list: in out list_type; item: in Hero_Type);
procedure Delete(list: in out list_type);
function Find(list: in list_type; item: in Hero_Type) return Hero_Type;
procedure Find(list: in list_type; item: in out Hero_Type);


private
type list_type is access e_type;

type e_type is
  record
     Data: Hero_Type;
     Next: list_type;
  end record;

end Sorted_Hero_List;
