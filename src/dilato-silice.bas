Attribute VB_Name = "dilatosilice"
Function silice(T)
silice = -6.18117E-18 * T ^ 4 + 1.66963E-14 * T ^ 3 - 1.43909E-11 * T ^ 2 + 0.00000000403746 * T + 0.0000003588
End Function

Function intsilice(T)
intsilice = -1.2363E-18 * T ^ 5 + 4.174E-15 * T ^ 4 - 4.7969E-12 * T ^ 3 + 0.0000000020187 * T ^ 2 + 0.0000003588 * T
End Function
