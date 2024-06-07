library kernel;

var
        
        ii: Integer = 0;
procedure putss (P : Pchar);cdecl ; external;

procedure mains;cdecl;

var
        i: Integer;
        buffer: PChar ='hello world pascal\n';
begin
       

        putss(buffer);
end;

exports 
mains;
end.
