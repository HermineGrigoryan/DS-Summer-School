library(gapminder)
library(dplyr)
library(tidyverse)
library(ggplot2)

head(gapminder)
str(gapminder)

gapminder %>%  
  filter(country == "China", year == 2002)

gapminder %>%
  filter(year == 2007) %>%
  arrange(desc(gdpPercap)) %>%
  ggplot()+geom_line(aes(gdpPercap, lifeExp, color=continent))

gapminder<-gapminder %>%
  mutate(pop = pop / 1000000)

gapminder %>%
  mutate(gdp = gdpPercap * pop)

gapminder %>%
  mutate(gdp = gdpPercap * pop) %>%
  filter(year == 2007) %>%
  arrange(desc(gdp))

gapminder %>%  
  filter(year == 2007) %>%
  mutate(lifeExpMonths = 12 * lifeExp) %>%
  arrange(desc(lifeExpMonths))

gapminder_2007 <- gapminder %>%
  filter(year == 2007)

ggplot(gapminder_2007, aes(x = gdpPercap, y = lifeExp)) +
  geom_point()

gapminder_1952 <- gapminder %>%  
  filter(year == 1952)

# Change to put pop on the x-axis and gdpPercap on the y-axis
ggplot(gapminder_1952, aes(x = pop, y = gdpPercap)) +  
  geom_point()

ggplot(gapminder_2007, aes(x = gdpPercap, y = lifeExp, color=continent, size=pop)) +
  geom_point() +
  scale_x_log10()

gapminder_new <- gapminder %>%
  filter(year == 2007 | year == 1952)

ggplot(gapminder_new, aes(x = gdpPercap, y = lifeExp, color=continent, size=pop, shape=factor(year))) +
  geom_point() +
  scale_x_log10()
