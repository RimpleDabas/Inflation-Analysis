{
    "metadata": {
        "kernelspec": {
            "name": "SQL",
            "display_name": "SQL",
            "language": "sql"
        },
        "language_info": {
            "name": "sql",
            "version": ""
        }
    },
    "nbformat_minor": 2,
    "nbformat": 4,
    "cells": [
        {
            "cell_type": "code",
            "source": [
                "-- Select distinct products name\r\n",
                "SELECT DISTINCT(Products_Name) From dbo.dataset;"
            ],
            "metadata": {
                "azdata_cell_guid": "696cd3f5-8d0c-431d-b983-076bd4ea2d6c",
                "language": "sql"
            },
            "outputs": [
                {
                    "output_type": "display_data",
                    "data": {
                        "text/html": "(105 rows affected)"
                    },
                    "metadata": {}
                },
                {
                    "output_type": "display_data",
                    "data": {
                        "text/html": "Total execution time: 00:00:00.059"
                    },
                    "metadata": {}
                },
                {
                    "output_type": "execute_result",
                    "metadata": {},
                    "execution_count": 2,
                    "data": {
                        "application/vnd.dataresource+json": {
                            "schema": {
                                "fields": [
                                    {
                                        "name": "Products_Name"
                                    }
                                ]
                            },
                            "data": [
                                {
                                    "Products_Name": "Shampoo"
                                },
                                {
                                    "Products_Name": "Block cheese"
                                },
                                {
                                    "Products_Name": "Romaine lettuce"
                                },
                                {
                                    "Products_Name": "Canned soup"
                                },
                                {
                                    "Products_Name": "Salad dressing"
                                },
                                {
                                    "Products_Name": "Cream"
                                },
                                {
                                    "Products_Name": "Broccoli"
                                },
                                {
                                    "Products_Name": "Frozen corn"
                                },
                                {
                                    "Products_Name": "Olive oil"
                                },
                                {
                                    "Products_Name": "Squash"
                                },
                                {
                                    "Products_Name": "Ketchup"
                                },
                                {
                                    "Products_Name": "Beef top sirloin cuts"
                                },
                                {
                                    "Products_Name": "Whole chicken"
                                },
                                {
                                    "Products_Name": "Sunflower seeds"
                                },
                                {
                                    "Products_Name": "Canned pear"
                                },
                                {
                                    "Products_Name": "Shrimp"
                                },
                                {
                                    "Products_Name": "Wheat flour"
                                },
                                {
                                    "Products_Name": "Flatbread and pita"
                                },
                                {
                                    "Products_Name": "Frozen mixed vegetables"
                                },
                                {
                                    "Products_Name": "Salmon"
                                },
                                {
                                    "Products_Name": "Peppers"
                                },
                                {
                                    "Products_Name": "Mushrooms"
                                },
                                {
                                    "Products_Name": "Canola oil"
                                },
                                {
                                    "Products_Name": "Wieners"
                                },
                                {
                                    "Products_Name": "Iceberg lettuce"
                                },
                                {
                                    "Products_Name": "White bread"
                                },
                                {
                                    "Products_Name": "Cereal"
                                },
                                {
                                    "Products_Name": "Avocado"
                                },
                                {
                                    "Products_Name": "Pork loin cuts"
                                },
                                {
                                    "Products_Name": "Mayonnaise"
                                },
                                {
                                    "Products_Name": "Baby food"
                                },
                                {
                                    "Products_Name": "Tomatoes"
                                },
                                {
                                    "Products_Name": "Limes"
                                },
                                {
                                    "Products_Name": "Onions"
                                },
                                {
                                    "Products_Name": "Pork shoulder cuts"
                                },
                                {
                                    "Products_Name": "Carrots"
                                },
                                {
                                    "Products_Name": "Frozen broccoli"
                                },
                                {
                                    "Products_Name": "Chicken thigh"
                                },
                                {
                                    "Products_Name": "Infant formula"
                                },
                                {
                                    "Products_Name": "Grapes"
                                },
                                {
                                    "Products_Name": "Ground beef"
                                },
                                {
                                    "Products_Name": "Cantaloupe"
                                },
                                {
                                    "Products_Name": "White rice"
                                },
                                {
                                    "Products_Name": "Dry beans and legumes"
                                },
                                {
                                    "Products_Name": "Canned tuna"
                                },
                                {
                                    "Products_Name": "Frozen green beans"
                                },
                                {
                                    "Products_Name": "Butter"
                                },
                                {
                                    "Products_Name": "Canned tomatoes"
                                },
                                {
                                    "Products_Name": "Cookies and sweet biscuits"
                                },
                                {
                                    "Products_Name": "Tea"
                                },
                                {
                                    "Products_Name": "Pears"
                                },
                                {
                                    "Products_Name": "Apple juice"
                                },
                                {
                                    "Products_Name": "Margarine"
                                },
                                {
                                    "Products_Name": "Oranges"
                                },
                                {
                                    "Products_Name": "Bacon"
                                },
                                {
                                    "Products_Name": "Potatoes"
                                },
                                {
                                    "Products_Name": "Soy milk"
                                },
                                {
                                    "Products_Name": "Peanut butter"
                                },
                                {
                                    "Products_Name": "Toothpaste"
                                },
                                {
                                    "Products_Name": "Laundry detergent"
                                },
                                {
                                    "Products_Name": "Chicken drumsticks"
                                },
                                {
                                    "Products_Name": "Canned salmon"
                                },
                                {
                                    "Products_Name": "Strawberries"
                                },
                                {
                                    "Products_Name": "Canned corn"
                                },
                                {
                                    "Products_Name": "Yogurt"
                                },
                                {
                                    "Products_Name": "Vegetable oil"
                                },
                                {
                                    "Products_Name": "Cabbage"
                                },
                                {
                                    "Products_Name": "Lemons"
                                },
                                {
                                    "Products_Name": "Dry or fresh pasta"
                                },
                                {
                                    "Products_Name": "Pasta sauce"
                                },
                                {
                                    "Products_Name": "Apples"
                                },
                                {
                                    "Products_Name": "Chicken breasts"
                                },
                                {
                                    "Products_Name": "Pork rib cuts"
                                },
                                {
                                    "Products_Name": "Eggs"
                                },
                                {
                                    "Products_Name": "Frozen pizza"
                                },
                                {
                                    "Products_Name": "Brown rice"
                                },
                                {
                                    "Products_Name": "Dried lentils"
                                },
                                {
                                    "Products_Name": "Beef stewing cuts"
                                },
                                {
                                    "Products_Name": "Crackers and crisp breads"
                                },
                                {
                                    "Products_Name": "Canned baked beans"
                                },
                                {
                                    "Products_Name": "Peanuts"
                                },
                                {
                                    "Products_Name": "Canned beans and lentils"
                                },
                                {
                                    "Products_Name": "Roasted or ground coffee"
                                },
                                {
                                    "Products_Name": "Tofu"
                                },
                                {
                                    "Products_Name": "Frozen peas"
                                },
                                {
                                    "Products_Name": "Milk"
                                },
                                {
                                    "Products_Name": "Cucumber"
                                },
                                {
                                    "Products_Name": "Salad greens"
                                },
                                {
                                    "Products_Name": "Salsa"
                                },
                                {
                                    "Products_Name": "Celery"
                                },
                                {
                                    "Products_Name": "Canned peach"
                                },
                                {
                                    "Products_Name": "Frozen french fried potatoes"
                                },
                                {
                                    "Products_Name": "Almonds"
                                },
                                {
                                    "Products_Name": "Beef rib cuts"
                                },
                                {
                                    "Products_Name": "Nut milk"
                                },
                                {
                                    "Products_Name": "Deodorant"
                                },
                                {
                                    "Products_Name": "Beef striploin cuts"
                                },
                                {
                                    "Products_Name": "Orange juice"
                                },
                                {
                                    "Products_Name": "Sweet potatoes"
                                },
                                {
                                    "Products_Name": "Meatless burgers"
                                },
                                {
                                    "Products_Name": "Hummus"
                                },
                                {
                                    "Products_Name": "Frozen strawberries"
                                },
                                {
                                    "Products_Name": "Bananas"
                                },
                                {
                                    "Products_Name": "White sugar"
                                },
                                {
                                    "Products_Name": "Frozen spinach"
                                }
                            ]
                        },
                        "text/html": [
                            "<table>",
                            "<tr><th>Products_Name</th></tr>",
                            "<tr><td>Shampoo</td></tr>",
                            "<tr><td>Block cheese</td></tr>",
                            "<tr><td>Romaine lettuce</td></tr>",
                            "<tr><td>Canned soup</td></tr>",
                            "<tr><td>Salad dressing</td></tr>",
                            "<tr><td>Cream</td></tr>",
                            "<tr><td>Broccoli</td></tr>",
                            "<tr><td>Frozen corn</td></tr>",
                            "<tr><td>Olive oil</td></tr>",
                            "<tr><td>Squash</td></tr>",
                            "<tr><td>Ketchup</td></tr>",
                            "<tr><td>Beef top sirloin cuts</td></tr>",
                            "<tr><td>Whole chicken</td></tr>",
                            "<tr><td>Sunflower seeds</td></tr>",
                            "<tr><td>Canned pear</td></tr>",
                            "<tr><td>Shrimp</td></tr>",
                            "<tr><td>Wheat flour</td></tr>",
                            "<tr><td>Flatbread and pita</td></tr>",
                            "<tr><td>Frozen mixed vegetables</td></tr>",
                            "<tr><td>Salmon</td></tr>",
                            "<tr><td>Peppers</td></tr>",
                            "<tr><td>Mushrooms</td></tr>",
                            "<tr><td>Canola oil</td></tr>",
                            "<tr><td>Wieners</td></tr>",
                            "<tr><td>Iceberg lettuce</td></tr>",
                            "<tr><td>White bread</td></tr>",
                            "<tr><td>Cereal</td></tr>",
                            "<tr><td>Avocado</td></tr>",
                            "<tr><td>Pork loin cuts</td></tr>",
                            "<tr><td>Mayonnaise</td></tr>",
                            "<tr><td>Baby food</td></tr>",
                            "<tr><td>Tomatoes</td></tr>",
                            "<tr><td>Limes</td></tr>",
                            "<tr><td>Onions</td></tr>",
                            "<tr><td>Pork shoulder cuts</td></tr>",
                            "<tr><td>Carrots</td></tr>",
                            "<tr><td>Frozen broccoli</td></tr>",
                            "<tr><td>Chicken thigh</td></tr>",
                            "<tr><td>Infant formula</td></tr>",
                            "<tr><td>Grapes</td></tr>",
                            "<tr><td>Ground beef</td></tr>",
                            "<tr><td>Cantaloupe</td></tr>",
                            "<tr><td>White rice</td></tr>",
                            "<tr><td>Dry beans and legumes</td></tr>",
                            "<tr><td>Canned tuna</td></tr>",
                            "<tr><td>Frozen green beans</td></tr>",
                            "<tr><td>Butter</td></tr>",
                            "<tr><td>Canned tomatoes</td></tr>",
                            "<tr><td>Cookies and sweet biscuits</td></tr>",
                            "<tr><td>Tea</td></tr>",
                            "<tr><td>Pears</td></tr>",
                            "<tr><td>Apple juice</td></tr>",
                            "<tr><td>Margarine</td></tr>",
                            "<tr><td>Oranges</td></tr>",
                            "<tr><td>Bacon</td></tr>",
                            "<tr><td>Potatoes</td></tr>",
                            "<tr><td>Soy milk</td></tr>",
                            "<tr><td>Peanut butter</td></tr>",
                            "<tr><td>Toothpaste</td></tr>",
                            "<tr><td>Laundry detergent</td></tr>",
                            "<tr><td>Chicken drumsticks</td></tr>",
                            "<tr><td>Canned salmon</td></tr>",
                            "<tr><td>Strawberries</td></tr>",
                            "<tr><td>Canned corn</td></tr>",
                            "<tr><td>Yogurt</td></tr>",
                            "<tr><td>Vegetable oil</td></tr>",
                            "<tr><td>Cabbage</td></tr>",
                            "<tr><td>Lemons</td></tr>",
                            "<tr><td>Dry or fresh pasta</td></tr>",
                            "<tr><td>Pasta sauce</td></tr>",
                            "<tr><td>Apples</td></tr>",
                            "<tr><td>Chicken breasts</td></tr>",
                            "<tr><td>Pork rib cuts</td></tr>",
                            "<tr><td>Eggs</td></tr>",
                            "<tr><td>Frozen pizza</td></tr>",
                            "<tr><td>Brown rice</td></tr>",
                            "<tr><td>Dried lentils</td></tr>",
                            "<tr><td>Beef stewing cuts</td></tr>",
                            "<tr><td>Crackers and crisp breads</td></tr>",
                            "<tr><td>Canned baked beans</td></tr>",
                            "<tr><td>Peanuts</td></tr>",
                            "<tr><td>Canned beans and lentils</td></tr>",
                            "<tr><td>Roasted or ground coffee</td></tr>",
                            "<tr><td>Tofu</td></tr>",
                            "<tr><td>Frozen peas</td></tr>",
                            "<tr><td>Milk</td></tr>",
                            "<tr><td>Cucumber</td></tr>",
                            "<tr><td>Salad greens</td></tr>",
                            "<tr><td>Salsa</td></tr>",
                            "<tr><td>Celery</td></tr>",
                            "<tr><td>Canned peach</td></tr>",
                            "<tr><td>Frozen french fried potatoes</td></tr>",
                            "<tr><td>Almonds</td></tr>",
                            "<tr><td>Beef rib cuts</td></tr>",
                            "<tr><td>Nut milk</td></tr>",
                            "<tr><td>Deodorant</td></tr>",
                            "<tr><td>Beef striploin cuts</td></tr>",
                            "<tr><td>Orange juice</td></tr>",
                            "<tr><td>Sweet potatoes</td></tr>",
                            "<tr><td>Meatless burgers</td></tr>",
                            "<tr><td>Hummus</td></tr>",
                            "<tr><td>Frozen strawberries</td></tr>",
                            "<tr><td>Bananas</td></tr>",
                            "<tr><td>White sugar</td></tr>",
                            "<tr><td>Frozen spinach</td></tr>",
                            "</table>"
                        ]
                    }
                }
            ],
            "execution_count": 2
        },
        {
            "cell_type": "code",
            "source": [
                "-- Select any product from the list and see how the price changed over years\r\n",
                "SELECT  Year,Products_Name ,ROUND(Avg([VALUE]), 2 )  AS Average_Price \r\n",
                "FROM dbo.dataset\r\n",
                "WHERE Products_Name = 'Onions'\r\n",
                "GROUP bY Year,Products_Name\r\n",
                "ORDER BY [Year]\r\n",
                ""
            ],
            "metadata": {
                "language": "sql",
                "azdata_cell_guid": "01d01d87-f174-4a13-93ff-1125c378e1b5"
            },
            "outputs": [
                {
                    "output_type": "display_data",
                    "data": {
                        "text/html": "(8 rows affected)"
                    },
                    "metadata": {}
                },
                {
                    "output_type": "display_data",
                    "data": {
                        "text/html": "Total execution time: 00:00:00.019"
                    },
                    "metadata": {}
                },
                {
                    "output_type": "execute_result",
                    "metadata": {},
                    "execution_count": 25,
                    "data": {
                        "application/vnd.dataresource+json": {
                            "schema": {
                                "fields": [
                                    {
                                        "name": "Year"
                                    },
                                    {
                                        "name": "Products_Name"
                                    },
                                    {
                                        "name": "Average_Price"
                                    }
                                ]
                            },
                            "data": [
                                {
                                    "Year": "2017",
                                    "Products_Name": "Onions",
                                    "Average_Price": "3.54"
                                },
                                {
                                    "Year": "2018",
                                    "Products_Name": "Onions",
                                    "Average_Price": "3.64"
                                },
                                {
                                    "Year": "2019",
                                    "Products_Name": "Onions",
                                    "Average_Price": "4.14"
                                },
                                {
                                    "Year": "2020",
                                    "Products_Name": "Onions",
                                    "Average_Price": "4.04"
                                },
                                {
                                    "Year": "2021",
                                    "Products_Name": "Onions",
                                    "Average_Price": "4.16"
                                },
                                {
                                    "Year": "2022",
                                    "Products_Name": "Onions",
                                    "Average_Price": "4.93"
                                },
                                {
                                    "Year": "2023",
                                    "Products_Name": "Onions",
                                    "Average_Price": "4.99"
                                },
                                {
                                    "Year": "2024",
                                    "Products_Name": "Onions",
                                    "Average_Price": "5.26"
                                }
                            ]
                        },
                        "text/html": [
                            "<table>",
                            "<tr><th>Year</th><th>Products_Name</th><th>Average_Price</th></tr>",
                            "<tr><td>2017</td><td>Onions</td><td>3.54</td></tr>",
                            "<tr><td>2018</td><td>Onions</td><td>3.64</td></tr>",
                            "<tr><td>2019</td><td>Onions</td><td>4.14</td></tr>",
                            "<tr><td>2020</td><td>Onions</td><td>4.04</td></tr>",
                            "<tr><td>2021</td><td>Onions</td><td>4.16</td></tr>",
                            "<tr><td>2022</td><td>Onions</td><td>4.93</td></tr>",
                            "<tr><td>2023</td><td>Onions</td><td>4.99</td></tr>",
                            "<tr><td>2024</td><td>Onions</td><td>5.26</td></tr>",
                            "</table>"
                        ]
                    }
                }
            ],
            "execution_count": 25
        },
        {
            "cell_type": "markdown",
            "source": [
                "\r\n",
                "<span style=\"color: #008000;\">-- Select distinct products name</span>"
            ],
            "metadata": {
                "azdata_cell_guid": "dcd05c26-dcff-4088-bfa2-c6676970c0b7"
            },
            "attachments": {}
        },
        {
            "cell_type": "markdown",
            "source": [
                ""
            ],
            "metadata": {
                "language": "sql",
                "azdata_cell_guid": "62cc14b2-a8c8-4384-bb79-c14a67272762"
            }
        }
    ]
}