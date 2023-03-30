
# dir <- getwd()
# 
# train_cat %>% 
#   explore::report(target = SalePrice,
#                   output_dir =dir,
#                   output_file = 'Cat vs Label')
# 
# train_num %>% 
#   explore::report(target = SalePrice,
#                   output_dir =dir,
#                   output_file = 'Num vs Label')
# 
# train_num %>% 
#   describe_all()

# train_cat %>% 
#   create_report(output_file = 'train_cat_report2.html',
#                 report_title = 'Categorical Features in Train Data')
# 
# train_num %>% 
#   create_report(output_file = 'train_num_report2.html',
#                 report_title = 'Numeric Features in Train Data')