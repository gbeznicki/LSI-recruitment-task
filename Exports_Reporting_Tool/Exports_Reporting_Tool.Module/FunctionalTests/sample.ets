;#DropDB Exports_Reporting_ToolEasyTest

#Application Exports_Reporting_ToolWin
#Application Exports_Reporting_ToolWeb
#IfDef Exports_Reporting_ToolWin

*Action About...
 
*Action OK

#EndIf

#IfDef Exports_Reporting_ToolWeb
!Action Navigation(My Details)
#EndIf
