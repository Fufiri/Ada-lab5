with Ada.Unchecked_deallocation;
package body sorted_list is

function Empty(List: in list_type) return boolean is
begin
  return list = null;
end Empty;

procedure Insert(List: in out list_type; I: in Integer) is
temp_list: list_type;
begin
  if Member(List, I) = false then
       
  if Empty(list) then
     list := new e_type'(Data => I, Next => null);
elsif list.Data > I then
  temp_list:= list;
  list:= new e_type'(Data => I, Next => temp_list);
else
  Insert(List.Next, I);
  end if;
  
  end if;
  
end Insert;

procedure Put(list: in list_type) is
begin
  if not Empty(list) then
  put(list.data, width => 0);
  Put(" ");
  put(list.next);
end if;
end Put;

function Member(list: in list_type; item: in Integer) return boolean is
begin
  if empty(list) then
    return false;
  elsif list.data = item then
    return true;
  else
    return Member(list.next, item);
  end if;
end Member;

procedure Free is
  new Ada.Unchecked_deallocation(e_type, list_type);

procedure Remove(list: in out list_type; item: in Integer) is
temp_list: list_type;
begin
  if Empty(list) then
    raise Null_Error;
  elsif list.data = item then
    temp_list:= list.next;
    Free(list);
    list:= temp_list;
  else
    Remove(list.next, item);
  end if;
end Remove;

procedure Delete(list: in out list_type) is
begin
  if Empty(list.next) then
  Free(list);
  else
  Delete(list.next);
  Free(list);
  end if;
end Delete;

function Find(list: in list_type; item: in Integer) return Integer is
begin
  if empty(list) then
    raise Null_Error;
  elsif list.data = item then
    return list.data;
  else
    return Find(list.next, item);
  end if;
end Find;

procedure Find(list: in list_type; item: in out Integer) is
begin
  item:= Find(list,item);
end Find;

function Length(List: in list_type) return natural is
begin
  if List = null then
  return 0;
  else
    return 1 + Length(List.Next);
  end if;
end Length;

end sorted_list;
