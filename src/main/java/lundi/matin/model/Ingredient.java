package lundi.matin.model;

public class Ingredient {
  private int id;
  private String name;
  private Double price;
  private CategoryEnum category;
  private Dish dish;

  public String getDishName() {
    return dish.getName();
  }

  public Double getPrice() {
    return price;
  }
}
