---
title: "Appendix"
---

## Reference Materials

This appendix provides a quick reference for functions and tools covered in class.

::: {.panel-tabset}

## R Functions {#r-functions}

***

#### `class()` {#class}
* **Description:** Returns the class or type of an R object.
* **Example:** `class(my_variable)`

***

#### `str()` {#str}
* **Description:** Displays the internal **str**ucture of an R object.
* **Example:** `str(iris)`

***

#### `glimpse()` {#glimpse}
* **Description:** A `dplyr` function that provides a transposed view of `str()`.
* **Example:** `glimpse(iris)`

***

#### `read_csv()` {#read-csv}
* **Description:** A `readr` function for reading .csv files.
* **Example:** `read_csv("my_data.csv")`

***

#### `read_xlsx()` {#read-xlsx}
* **Description:** A `readxl` function for reading Excel files.
* **Example:** `read_xlsx("my_data.xlsx")`

***

#### `write_xlsx()` {#write-xlsx}
* **Description:** A `writexl` function for writing to an .xlsx file.
* **Example:** `write_xlsx(my_dataframe, "output.xlsx")`

***

#### `subset()` {#subset}
* **Description:** A base R function for selecting rows and columns.
* **Example:** `subset(iris, Species == "setosa")`

***

#### `filter()` {#filter}
* **Description:** A `dplyr` function to select rows based on their values.
* **Example:** `filter(iris, Sepal.Length > 7)`

***

#### `select()` {#select}
* **Description:** A `dplyr` function to select columns by name.
* **Example:** `select(iris, Petal.Length, Petal.Width)`

***

#### `%>%` (Pipe) {#pipe}
* **Description:** The pipe operator from `magrittr` that chains operations together.
* **Example:** `iris %>% filter(Species == "versicolor") %>% select(Petal.Width)`

***

#### Logical Operators {#logical-operators}
* **Description:** Used to create conditions for filtering. Includes `==`, `!=`, `>`, `<`, `&` (AND), `|` (OR).
* **Example:** `filter(iris, Species == "setosa" & Petal.Width > 0.2)`

***

#### `left_join()` {#left-join}
* **Description:** A `dplyr` function that returns all rows from the left table (x), and all columns from both x and y.
* **Example:** `left_join(table1, table2, by = "common_column")`

***

#### `right_join()` {#right-join}
* **Description:** A `dplyr` function that returns all rows from the right table (y), and all columns from both x and y.
* **Example:** `right_join(table1, table2, by = "common_column")`

***

#### `full_join()` {#full-join}
* **Description:** A `dplyr` function that returns all rows and all columns from both tables.
* **Example:** `full_join(table1, table2, by = "common_column")`

***

#### `inner_join()` {#inner-join}
* **Description:** A `dplyr` function that returns only the rows from both tables that have matching values.
* **Example:** `inner_join(table1, table2, by = "common_column")`

***

#### `mutate()` {#mutate}
* **Description:** A `dplyr` function that adds new variables or transforms existing ones.
* **Example:** `mutate(iris, Petal.Area = Petal.Length * Petal.Width)`

***

#### `summarize()` {#summarize}
* **Description:** A `dplyr` function that collapses a data frame to a single row with summary statistics.
* **Example:** `summarize(iris, avg_sepal_length = mean(Sepal.Length))`

***

#### `case_when()` {#case-when}
* **Description:** A `dplyr` function for applying multiple `if/else` conditions.
* **Example:** `mutate(iris, size = case_when(Sepal.Length > 5 ~ "big", TRUE ~ "small"))`

***

#### `group_by()` {#group-by}
* **Description:** A `dplyr` function used to group a data frame by one or more variables.
* **Example:** `iris %>% group_by(Species) %>% summarize(avg_petal_length = mean(Petal.Length))`

***

#### `pivot_longer()` {#pivot-longer}
* **Description:** A `tidyr` function that "lengthens" data, increasing the number of rows and decreasing the number of columns.
* **Example:** `data %>% pivot_longer(cols = c(col1, col2), names_to = "variable", values_to = "value")`

***

#### `pivot_wider()` {#pivot-wider}
* **Description:** A `tidyr` function that "widens" data, increasing the number of columns and decreasing the number of rows.
* **Example:** `data %>% pivot_wider(names_from = "variable", values_from = "value")`

***

#### `separate()` {#separate}
* **Description:** A `tidyr` function that splits a single character column into multiple columns.
* **Example:** `data %>% separate(col = "combined_col", into = c("new_col1", "new_col2"), sep = "-")`

***

#### `unite()` {#unite}
* **Description:** A `tidyr` function that combines multiple columns into a single character column.
* **Example:** `data %>% unite("new_combined_col", col1, col2, sep = "_")`

***

#### `for()` (For Loops) {#for-loop}
* **Description:** Executes a block of code repeatedly for each item in a sequence.
* **Example:**
  ```r
  for (i in 1:5) {
    print(paste("This is loop number", i))
  }
  ```

***

#### `if()`, `else if()`, `else` (Conditionals) {#conditionals}
* **Description:** Controls the flow of code execution based on logical conditions.
* **Example:**
  ```r
  x <- 10
  if (x > 20) {
    print("x is large")
  } else if (x > 5) {
    print("x is medium")
  } else {
    print("x is small")
  }
  ```

***

#### `function()` (Custom Functions) {#custom-function}
* **Description:** Creates a new, reusable function to perform a specific task.
* **Example:**
  ```r
  add_numbers <- function(a, b) {
    return(a + b)
  }
  ```

***

#### `nest()` {#nest}
* **Description:** A `tidyr` function that creates a list-column containing data frames. It's a cornerstone of working with nested data.
* **Example:** `data %>% group_by(group_var) %>% nest()`

***

#### `map()` {#map}
* **Description:** A function from the `purrr` package that applies a function to each element of a list or vector, returning a list. It's an alternative to `for` loops for iterative operations.
* **Example:** `nested_data %>% mutate(model = map(data, ~lm(y ~ x, data = .)))`

***

#### `tidy()` {#tidy}
* **Description:** A function from the `broom` package that takes the messy output of a model and turns it into a tidy data frame.
* **Example:** `model %>% tidy()`

## ArcPro Tools {#arcpro-tools}

***

#### Dissolve {#dissolve}
* **Description:** Aggregates features based on specified attributes.

***

#### Excel to Table {#excel-to-table}
* **Description:** Converts Microsoft Excel files into a table in your geodatabase.

***

#### XY Table to Point {#xy-table-to-point}
* **Description:** Creates a new point feature class based on x- and y-coordinates in a table.

***

#### Calculate Field {#calculate-field}
* **Description:** Calculates the values of a field for a feature class or table.

***

#### Clip {#clip}
* **Description:** Extracts input features that overlay the clip features. Like using a cookie cutter.

***

#### Buffer {#buffer}
* **Description:** Creates buffer polygons around input features to a specified distance.

***

#### Extract Values to Points {#extract-values-to-points}
* **Description:** Extracts the cell values of a raster based on a set of point features.

***

#### Hillshade {#hillshade}
* **Description:** Creates a shaded relief raster from a digital elevation model (DEM).

***

#### Symbology {#symbology}
* **Description:** The process of assigning visual variables to map features to convey information.

***

#### Merge {#merge}
* **Description:** Combines multiple input datasets of the same data type into a single, new output dataset.

***

#### Append {#append}
* **Description:** Adds features from one or more datasets into an existing target dataset.

***

#### Intersect {#intersect}
* **Description:** Computes a geometric intersection of input features. Only the overlapping features are written to the output.

***

#### Spatial Join {#spatial-join}
* **Description:** Joins attributes from one feature to another based on their spatial relationship.

***

#### Extract by Mask {#extract-by-mask}
* **Description:** Extracts the cells of a raster that correspond to the areas defined by a mask.

***

#### Zonal Statistics {#zonal-statistics}
* **Description:** Summarizes the values of a raster within the zones of another dataset.

***

#### Feature to Point {#feature-to-point}
* **Description:** Creates a feature class containing points generated from the representative locations of input features.

***

#### Tabulate Area {#tabulate-area}
* **Description:** Calculates the area of each feature from one layer that falls within the classes of another raster layer.

***

#### Slope {#slope-tool}
* **Description:** Calculates the rate of change in elevation for each cell of a raster.

***

#### Aspect {#aspect-tool}
* **Description:** Identifies the downslope direction of the maximum rate of change in value from each cell to its neighbors.

***

#### Contour {#contour-tool}
* **Description:** Creates a line feature class of contours (isolines) from a raster surface.

***

#### Raster to Polygon {#raster-to-polygon}
* **Description:** Converts a raster dataset to a polygon feature class.

***

#### Raster Calculator {#raster-calculator}
* **Description:** Builds and executes a single Map Algebra expression using a Python syntax.

***

#### Creating & Editing Features {#creating-editing-features}
* **Description:** A collection of tools and workflows for creating new vector features and modifying existing ones.

***

#### Minimum Bounding Geometry {#minimum-bounding-geometry}
* **Description:** Creates a feature class containing polygons or polylines which represent a specified minimum bounding geometry.

***

#### Create Fishnet {#create-fishnet}
* **Description:** Creates a net of rectangular cells (a fishnet).

***

#### Interpolation Tools {#interpolation-tools}
* **Description:** A suite of tools (like IDW, Kriging, Spline) used to estimate values at unsampled locations.

***

#### ModelBuilder {#model-builder}
* **Description:** A visual programming language for building geoprocessing workflows.

***

#### Georeferencing Tools {#georeferencing-tools}
* **Description:** A set of tools used to align raster or vector data to a known coordinate system. This is often done by creating control points that link locations in the data to known real-world coordinates.

:::
