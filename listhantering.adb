with Ada.Text_IO;			use Ada.Text_IO;
with Ada.Integer_Text_IO;		use Ada.Integer_Text_IO;
with sorted_list; use sorted_list;


procedure listhantering is
list:list_type;
I : Integer := 5;
begin

Insert(list, 3);
Insert(list, 2);
Insert(list, 5);
put(list);
new_line;
--put(Boolean'Image(Member(list,5)));
Remove(list, 3);
put(list);
new_line;
Find(list, I);
Put(I);
-- skri ut så man ser att delite och sånt funkar
end listhantering;
