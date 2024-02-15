#!/usr/bin/python3
import xlwt
from xlwt import Workbook
import datetime

wb = Workbook()

loc_dt = datetime.datetime.today()
loc_dt_TIME = loc_dt.strftime("%Y/%m/%d %H:%M:%S")

i = 0

sheet1 = wb.add_sheet('Sheet 1')
sheet1.write(i, 0, 'Time')
sheet1.write(i, 1, 'Staff_ID')
sheet1.write(i, 2, 'Object_ID')
sheet1.write(i, 3, 'Performance')

i+=1
sheet1.write(i, 0, loc_dt_TIME)
sheet1.write(i, 1, 'Staff_3')
sheet1.write(i, 2, 'Chair_0')
sheet1.write(i, 3, '表現良好')


wb.save("/home/edward/catkin_ws/src/rgbd_object_detection/config/sample_data.xlsx")