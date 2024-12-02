page 50180 "TCG Transport Routes"
{
    // 1970
    ApplicationArea = All;
    DeleteAllowed = false;
    InsertAllowed = true;
    ModifyAllowed = true;
    PageType = Card;
    SourceTable = "TCG Transport Route";
    UsageCategory = Administration;

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field(TransportRouteId; Rec.TransportRouteId)
                {
                    Caption = 'Transport Route Id';
                    NotBlank = true;
                    ShowMandatory = true;
                    ToolTip = 'Specifies the value of the Transport Route ID field.', Comment = '%1';
                }
                field(Description; Rec.Description)
                {
                    Caption = 'Description';
                    NotBlank = true;
                    ShowMandatory = true;
                    ToolTip = 'Specifies the value of the Description field.', Comment = '%1';
                }
            }
        }
    }

    // actions
    // {
    //     area(Processing)
    //     {
    //         action(ActionName)
    //         {
    //             trigger OnAction()
    //             begin

    //             end;
    //         }
    //     }
    // }

    // var
    //     myInt: Integer;
}