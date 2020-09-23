Table table;
ArrayList<String> land= new ArrayList<String>();
String country;
String year;
void setup() {
  size(250, 250);
  table = loadTable("dnd.csv"); 
 
  for (int i = 0; i<table.getRowCount(); i++) {
    
    country = table.getRow(i).getString(1);
   
    TableRow r=table.getRow(i);
    r.getColumnCount();
    println(country);
    for (int c=2; c<r.getColumnCount(); c++) {
       year = table.getRow(0).getString(c);
      println(country,year,r.getInt(c));
    }
    land.add(country);
   // println("Deaths in " + land + ":" + table.getRow(i).getInt(2));
  }
}
void draw() {
  background(40);
}
