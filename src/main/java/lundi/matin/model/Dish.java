package lundi.matin.model;

import java.util.List;

public class Dish {
  private int id;
  private String name;
  private DishTypeEnum dishType;
  private List<Ingredient> ingredients;

  public Double getDishPrice() {
    return ingredients.stream().map(Ingredient::getPrice).reduce(0.0, Double::sum);
  }

  public String getName() {
    return name;
  }

}
