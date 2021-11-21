library(tidyverse)
library(ggplot2)
head(hotel_bookings)
glimpse(hotel_bookings)


ggplot(data = hotel_bookings) +
  geom_point(mapping = aes(x = children, y = lead_time))


ggplot(data = hotel_bookings) +
  geom_point(mapping = aes(x = stays_on_weekend_nights, y = lead_time))

#bar graph
ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = distribution_channel)) + 
  facet_grid(~deposit_type~market_segment)

#scatter plot
ggplot(data = hotel_bookings) +
  geom_point(mapping = aes(x= lead_time, y = children))

#bar graph 
ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = hotel)) +
  facet_wrap(~market_segment)



#filter function
online_city_hotels <- filter(hotel_bookings,
                             (hotel=="City Hotel" &
                             hotel_bookings$market_segment=="Online TA"))
View(online_city_hotels)

#filter v2

onlineta_city_hotels_v2 <- hotel_bookings %>%
  filter(hotel=="City Hotel") %>%
  filter(market_segment=="Online TA")

View(onlineta_city_hotels_v2)



ggplot(data = online_city_hotels) +
  geom_point(mapping = aes(x = lead_time, y = children))
