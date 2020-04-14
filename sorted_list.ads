with Ada.Text_IO;			use Ada.Text_IO;
with Ada.Integer_Text_IO;		use Ada.Integer_Text_IO;

package sorted_list is
  type e_type is private;
  type list_type is private;
  Null_Error: exception;
procedure Insert(List: in out list_type; I: in Integer);
function Empty(List: in list_type) return boolean;
function Length(List: in list_type) return natural;
procedure Put(list: in list_type);
function Member(list: in list_type; item: in Integer) return boolean;
procedure Remove(list: in out list_type; item: in Integer);
procedure Delete(list: in out list_type);
function Find(list: in list_type; item: in Integer) return Integer;
procedure Find(list: in list_type; item: in out Integer);
private
type list_type is access e_type;

type e_type is
  record
    Data: Integer;
    Next: list_type;
  end record;






end sorted_list;
