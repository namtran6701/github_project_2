pacman::p_load(pacman,
               tidyverse, 
               magrittr,
               skimr,
               psych, 
               DataExplorer,
               explore)


# Import data and remove the column Id
train <- 
  read.csv('train_ryan.csv',
           stringsAsFactors = T) %>% 
  as_tibble() %>% 
  select(-c(Id, MiscFeature))


test <- 
  read.csv('test_ryan.csv',
           stringsAsFactors = T) %>% 
  as_tibble() %>% 
  select(-c(Id, MiscFeature))

# Get numeric features 
num_cols <- read.csv('num_feature_train.csv') %>%
  select(-Id) %>% 
  colnames() 

train_num <- train %>% 
  select(all_of(num_cols))

# write.csv(train_num, 'train_num.csv')
# Get cat features

cat_cols <- read.csv('cat_features_test.csv') %>% 
  select(-MiscFeature) %>% 
  colnames()

train_cat <- train %>% 
  select(all_of(cat_cols),SalePrice)

# write.csv(train_cat, 'train_cat.csv')


train_cat %>% 
  explore()
