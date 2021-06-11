namespace sap.productsearch;

entity Products {
  key ProductID : Integer;
  ProdDesc  : String(50);
  ProdCat : String(20);
  order  : Association to many SalesOrderItems on order.product = $self;
  stock  : Integer;
  UnitPrice : String(20);
}

entity SalesOrderItems {
  key SO_ID : Integer;
  Item_ID   : Integer;
  product  : Association to Products;
  createdAt : DateTime;
}