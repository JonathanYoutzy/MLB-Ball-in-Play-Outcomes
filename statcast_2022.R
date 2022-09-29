library(baseballr)
library(tidyverse)

#pull in data from MLB statcast
statcast_2022_1 <- rbind(scrape_statcast_savant(start_date = '2022-04-07', end_date = '2022-04-09', player_type = 'batter'),
                         scrape_statcast_savant(start_date = '2022-04-10', end_date = '2022-04-12', player_type = 'batter'),
                         scrape_statcast_savant(start_date = '2022-04-13', end_date = '2022-04-15', player_type = 'batter'),
                         scrape_statcast_savant(start_date = '2022-04-16', end_date = '2022-04-18', player_type = 'batter'),
                         scrape_statcast_savant(start_date = '2022-04-19', end_date = '2022-04-21', player_type = 'batter'),
                         scrape_statcast_savant(start_date = '2022-04-22', end_date = '2022-04-24', player_type = 'batter'),
                         scrape_statcast_savant(start_date = '2022-04-25', end_date = '2022-04-27', player_type = 'batter'),
                         scrape_statcast_savant(start_date = '2022-04-28', end_date = '2022-04-30', player_type = 'batter'),
                         scrape_statcast_savant(start_date = '2022-05-01', end_date = '2022-05-03', player_type = 'batter'),
                         scrape_statcast_savant(start_date = '2022-05-04', end_date = '2022-05-06', player_type = 'batter'),
                         scrape_statcast_savant(start_date = '2022-05-07', end_date = '2022-05-09', player_type = 'batter'),
                         scrape_statcast_savant(start_date = '2022-05-10', end_date = '2022-05-12', player_type = 'batter'),
                         scrape_statcast_savant(start_date = '2022-05-13', end_date = '2022-05-15', player_type = 'batter'),
                         scrape_statcast_savant(start_date = '2022-05-16', end_date = '2022-05-18', player_type = 'batter'),
                         scrape_statcast_savant(start_date = '2022-05-19', end_date = '2022-05-21', player_type = 'batter'),
                         scrape_statcast_savant(start_date = '2022-05-22', end_date = '2022-05-24', player_type = 'batter'),
                         scrape_statcast_savant(start_date = '2022-05-25', end_date = '2022-05-27', player_type = 'batter'),
                         scrape_statcast_savant(start_date = '2022-05-28', end_date = '2022-05-30', player_type = 'batter'),
                         scrape_statcast_savant(start_date = '2022-05-31', end_date = '2022-06-02', player_type = 'batter'),
                         scrape_statcast_savant(start_date = '2022-06-03', end_date = '2022-06-05', player_type = 'batter'),
                         scrape_statcast_savant(start_date = '2022-06-06', end_date = '2022-06-08', player_type = 'batter'),
                         scrape_statcast_savant(start_date = '2022-06-09', end_date = '2022-06-11', player_type = 'batter'),
                         scrape_statcast_savant(start_date = '2022-06-12', end_date = '2022-06-14', player_type = 'batter'),
                         scrape_statcast_savant(start_date = '2022-06-15', end_date = '2022-06-17', player_type = 'batter'),
                         scrape_statcast_savant(start_date = '2022-06-18', end_date = '2022-06-20', player_type = 'batter'),
                         scrape_statcast_savant(start_date = '2022-06-21', end_date = '2022-06-23', player_type = 'batter'),
                         scrape_statcast_savant(start_date = '2022-06-24', end_date = '2022-06-26', player_type = 'batter'),
                         scrape_statcast_savant(start_date = '2022-06-27', end_date = '2022-06-29', player_type = 'batter'))

statcast_2022_2 <- rbind(scrape_statcast_savant(start_date = '2022-06-30', end_date = '2022-07-02', player_type = 'batter'),
                         scrape_statcast_savant(start_date = '2022-07-03', end_date = '2022-07-05', player_type = 'batter'),
                         scrape_statcast_savant(start_date = '2022-07-06', end_date = '2022-07-08', player_type = 'batter'),
                         scrape_statcast_savant(start_date = '2022-07-09', end_date = '2022-07-11', player_type = 'batter'),
                         scrape_statcast_savant(start_date = '2022-07-12', end_date = '2022-07-14', player_type = 'batter'),
                         scrape_statcast_savant(start_date = '2022-07-15', end_date = '2022-07-17', player_type = 'batter'),
                         scrape_statcast_savant(start_date = '2022-07-21', end_date = '2022-07-23', player_type = 'batter'),
                         scrape_statcast_savant(start_date = '2022-07-24', end_date = '2022-07-26', player_type = 'batter'),
                         scrape_statcast_savant(start_date = '2022-07-27', end_date = '2022-07-29', player_type = 'batter'),
                         scrape_statcast_savant(start_date = '2022-07-30', end_date = '2022-08-01', player_type = 'batter'),
                         scrape_statcast_savant(start_date = '2022-08-02', end_date = '2022-08-04', player_type = 'batter'),
                         scrape_statcast_savant(start_date = '2022-08-05', end_date = '2022-08-07', player_type = 'batter'),
                         scrape_statcast_savant(start_date = '2022-08-08', end_date = '2022-08-10', player_type = 'batter'),
                         scrape_statcast_savant(start_date = '2022-08-11', end_date = '2022-08-13', player_type = 'batter'),
                         scrape_statcast_savant(start_date = '2022-08-14', end_date = '2022-08-16', player_type = 'batter'),
                         scrape_statcast_savant(start_date = '2022-08-17', end_date = '2022-08-19', player_type = 'batter'),
                         scrape_statcast_savant(start_date = '2022-08-20', end_date = '2022-08-22', player_type = 'batter'),
                         scrape_statcast_savant(start_date = '2022-08-23', end_date = '2022-08-25', player_type = 'batter'),
                         scrape_statcast_savant(start_date = '2022-08-26', end_date = '2022-08-28', player_type = 'batter'),
                         scrape_statcast_savant(start_date = '2022-08-29', end_date = '2022-08-31', player_type = 'batter'),
                         scrape_statcast_savant(start_date = '2022-09-01', end_date = '2022-09-03', player_type = 'batter'),
                         scrape_statcast_savant(start_date = '2022-09-04', end_date = '2022-09-06', player_type = 'batter'),
                         scrape_statcast_savant(start_date = '2022-09-07', end_date = '2022-09-09', player_type = 'batter'),
                         scrape_statcast_savant(start_date = '2022-09-10', end_date = '2022-09-12', player_type = 'batter'),
                         scrape_statcast_savant(start_date = '2022-09-13', end_date = '2022-09-15', player_type = 'batter'),
                         scrape_statcast_savant(start_date = '2022-09-16', end_date = '2022-09-18', player_type = 'batter'),
                         scrape_statcast_savant(start_date = '2022-09-19', end_date = '2022-09-21', player_type = 'batter'),
                         scrape_statcast_savant(start_date = '2022-09-22', end_date = '2022-09-24', player_type = 'batter'),
                         scrape_statcast_savant(start_date = '2022-09-25', end_date = '2022-09-26', player_type = 'batter'))

#combine dataframes into one
statcast_2022 <- rbind(statcast_2022_1, statcast_2022_2)

#filter to balls in play
#drop rows with no exit velocity or launch angle data
bip_2022 <- statcast_2022 |> 
  filter(description == 'hit_into_play') |> 
  filter(!is.na(launch_speed)) |> 
  filter(!is.na(launch_angle))

#create new column to classify BiP outcomes
bip_2022$description2 <- "Out"
bip_2022$description2[bip_2022$events == 'single'] <- "Single"
bip_2022$description2[bip_2022$events == 'double'] <- "Double"
bip_2022$description2[bip_2022$events == 'triple'] <- "Triple"
bip_2022$description2[bip_2022$events == 'home_run'] <- "Home Run"

#factor outcomes to 'normal' order
bip_2022$description2 <- factor(bip_2022$description2, levels = c('Out', 'Single', 'Double',
                                                            'Triple', 'Home Run'))
#create scatter plot
ggplot(data = bip_2022,
       aes(x = launch_speed, y = launch_angle)) +
  geom_point(aes(color = description2)) +
  scale_color_manual(values = c('blue', 'dark orange', 'green', 'red', 'darkorchid1')) +
  scale_x_continuous(breaks = seq(0, 130, 20)) +
  scale_y_continuous(breaks = seq(-100, 125, 25)) +
  labs(x = 'Exit Velocity (mph)',
       y = 'Launch Angle (deg)',
       title = 'Ball in Play Outcomes for Various Launch Angles and Exit Velocities',
       caption = 'Data: MLB Statcast') +
  theme_classic() +
  theme(aspect.ratio = 1,
        legend.title = element_blank(),
        plot.title = element_text(size = 14, hjust = 0.5, face = 'bold')
  )

#looking at all 'hit' outcomes
bip_hits <- bip_2022 |> 
  filter(description2 != 'Out')

bip_hits$description2 <- factor(bip_hits$description2, levels = c('Single', 'Double',
                                                                  'Triple', 'Home Run'))

ggplot(data = bip_hits,
       aes(x = launch_speed, y = launch_angle)) +
  geom_point(aes(color = description2)) +
  scale_color_manual(values = c('dark orange', 'green', 'red', 'darkorchid1')) +
  scale_x_continuous(breaks = seq(0, 130, 20)) +
  scale_y_continuous(breaks = seq(-100, 125, 25)) +
  labs(x = 'Exit Velocity (mph)',
       y = 'Launch Angle (deg)',
       title = 'Hits by Launch Angle and Exit Velocity',
       caption = 'Data: MLB Statcast') +
  theme_classic() +
  theme(aspect.ratio = 1,
        legend.title = element_blank(),
        plot.title = element_text(size = 14, hjust = 0.5, face = 'bold')
  )
