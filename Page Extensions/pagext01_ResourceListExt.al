pageextension 50101 CSD_ResourceListExt extends "Resource List"
//CSD_ResourceListExt
{
    layout
    {
        modify(Type)
        {
            Visible = ShowType;
        }
        addafter(Type)
        {
            field("CSD Resource Type"; "CSD Resource Type")
            {
                ApplicationArea = All;
            }
            field("CSD Maximum Participants"; "CSD Maximum Participants")
            {
                Visible = ShowMaxField;
                ApplicationArea = All;
            }
        }
    }

    trigger OnOpenPage();
    Begin
        ShowType := (Getfilter(Type) = '');
        ShowMaxField := (GetFilter(Type) = Format(Type::Machine));
    End;

    var
        [InDataSet]
        ShowType: Boolean;
        [InDataSet]
        ShowMaxField: Boolean;
}