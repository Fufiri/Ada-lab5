with Ada.Unchecked_deallocation;
with Hero_Handling; use Hero_Handling;
with String_Handling; use String_Handling;

package body Sorted_Hero_List is

function Empty(List: in List_Type) return boolean is
begin
  return list = null;
end Empty;

procedure Insert(List: in out List_Type; Item: in Hero_Type) is
   
   Temp_List: List_Type;
   
begin
   
   
   if Empty(List) then
      List := new E_Type'(Data => Item, Next => null);
   elsif Age(List.Data) = Age(Item) then
      null;
   elsif Age(List.Data) > Age(Item) then
      Temp_List := List;
      List := new E_Type'(Data => Item, Next => Temp_List);
   else
      Insert(List.Next, Item);
   end if;
   
   
 --  if List.Data = Item then
  --    null;
 --  elsif Empty(list) then
  --    list := new e_type'(Data => Item, Next => null);
  -- elsif list.Data > Item then
    -- Temp_List:= List;
    -- list:= new e_type'(Data => Item, Next => Temp_List);
  -- else
    --  Insert(List.Next, Item);
 --  end if;
  
end Insert;

procedure Put(list: in List_Type) is
begin
  if not Empty(list) then
  put(list.data);
  Put(" ");
  put(list.next);
end if;
end Put;

function Member(list: in List_Type; item: in Hero_Type) return boolean is
begin
  if empty(list) then
    return false;
  elsif Age(list.Data) = Age(Item) then
    return true;
  else
    return Member(list.next, item);
  end if;
end Member;

procedure Free is
  new Ada.Unchecked_deallocation(e_type, List_Type);

procedure Remove(list: in out List_Type; item: in Hero_Type) is
temp_list: List_Type;
begin
  if Empty(list) then
    raise Null_Error;
  elsif Age(list.Data) = Age(Item) then
    temp_list:= list.next;
    Free(list);
    list:= temp_list;
  else
    Remove(list.next, item);
  end if;
end Remove;

procedure Delete(list: in out List_Type) is
begin
  if Empty(list.next) then
  Free(list);
  else
  Delete(list.next);
  Free(list);
  end if;
end Delete;

function Find(list: in List_Type; item: in Hero_Type) return Hero_Type is
begin
  if empty(list) then
    raise Null_Error;
  elsif Age(list.Data) = Age(Item) then
    return list.data;
  else
    return Find(list.next, item);
  end if;
end Find;

procedure Find(list: in List_Type; item: in out Hero_Type) is
begin
  item:= Find(list, item);
end Find;

function Length(List: in List_Type) return natural is
begin
  if List = null then
  return 0;
  else
    return 1 + Length(List.Next);
  end if;
end Length;

end Sorted_Hero_List;
