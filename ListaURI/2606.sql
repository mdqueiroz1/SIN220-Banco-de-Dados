select products.id, products.name 
from products join categories on products.id_categories = categories.id and categories.name like 'super%';