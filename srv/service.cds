using sap.productsearch as sap from '../db/data-model';

service CatalogService {
  entity Products as projection on sap.Products;
  entity SalesOrderItems as projection on sap.SalesOrderItems;
}