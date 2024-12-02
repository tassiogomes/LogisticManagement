// // Usage Category: Documents

// // Unposted Transport Document List.

// // Fields:

// //     “No.”, Code[20],PK, The number of the document from the number series according to the setup: Number series for unposted transport document.,
// //     Delivery Date, Date
// //     Route Code, Code[20]
// //     Vehicle Type, Code[20], Table relation: Vehicle Type
// //     Vehicle Code[20], Table Relation: Vehicle
// //     Maximum Available Weight, - from Vehicle
// //     Total Cargo Weight Based on Source Documents KG, calc sum by Transport Line

// // Actions: Add, Delete, Open Transport Documents 

// page 71102 TransportDocument
// {
//     PageType = List;
//     ApplicationArea = All;
//     UsageCategory = Lists;
//     SourceTable = TableName;

//     layout
//     {
//         area(Content)
//         {
//             repeater(GroupName)
//             {
//                 field(Name; NameSource)
//                 {
//                     field("No. Series"; Blob)
//                 {
//                         DataClassification = ToBeClassified;
//                 }

//             }
//         }
//     }
//         area(Factboxes)
//         {

//         }
//     }

//     actions
//     {
//         area(Processing)
//         {
//             action(ActionName)
//             {

//                 trigger OnAction()
//                 begin

//                 end;
//             }
//         }
//     }
// }