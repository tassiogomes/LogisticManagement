tableextension 50182 SalesReceivablesSetupTableExt extends "Sales & Receivables Setup"
{
    fields
    {
        field(50180; "Code"; Code[20])
        {
            DataClassification = CustomerContent;
            TableRelation = "No. Series";
            Caption = 'Vehicle Code';
        }
    }
}