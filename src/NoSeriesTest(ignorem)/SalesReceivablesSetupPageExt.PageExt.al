pageextension 50181 SalesReceivablesSetupPageExt extends "Sales & Receivables Setup"
{
    layout
    {
        addafter("Customer Nos.")
        {
            field("Code"; rec.Code)
            {
                Caption = 'Code';
                ApplicationArea = All;
                ToolTip = 'this is the code setup no series';
            }


        }
    }
}