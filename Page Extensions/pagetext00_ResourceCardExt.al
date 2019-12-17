pageextension 50100 "CSD ResourceCardExt" extends "Resource Card"
// CSD ResourceCardExt
{
    layout
    {
        addlast(General)
        {
            field("CSD Resource Type"; "CSD Resource Type")
            {
                ApplicationArea = All;
            }
            field("CSD Quantity Per Day"; "CSD Quantity Per Day")
            {
                ApplicationArea = All;
            }
        }
        addafter("Personal Data")
        {
            group("csd room")
            {
                Caption = 'Room';
                Visible = ShowMaxField;
                field("CSD Maximum Participants"; "CSD Maximum Participants")
                {
                    Applicationarea = All;
                }
            }
        }


    trigger OnAfterGetRecord()
    begin
        ShowMaxField := (Type = Type::Machine)
    end;

    var
        [InDataSet]
        ShowMaxField: Boolean;
}