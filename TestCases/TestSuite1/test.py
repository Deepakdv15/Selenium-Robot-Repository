import xlrd
# import psutil
# import os
# process_names = [proc.name() for proc in psutil.process_iter()]
# print(process_names)
# print(len(process_names))
# process_status = [proc.status() for proc in psutil.process_iter()]
# print(process_status)
# print(len(process_status))
#
# process_id = [proc.pid for proc in psutil.process_iter()]
# print(process_id)
# print(len(process_id))

book=xlrd.open_workbook("DataSheet.xlsx")
sheet=book.sheet_by_index(0)
print(sheet)
row=0
col=0
sheet._cell_types[2][4]="deepak"



