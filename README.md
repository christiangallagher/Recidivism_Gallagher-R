# Personal data projects
- __Project Purpose:__ I originally picked this data to use for a statistics class I took over the summer. I wanted to find data that had time served to see if it was more likly for white inmates to get shorter sentencing than black inmates. My goal for the project was to look at the racial bias that is in the criminal justice system. Originally when I explored the data I did not use the proprotional population to black and white people in America. I onlt looked at the raw numbers and it was not as I expected. Once we had started project 2 where we looked at the suicide numbers using the percentage of the population for each race I took that knowledge and applied it to this data. The graphics now clearly showed what I assumed from the beginning to be true. This work was solely done for my own interest in the court system. 


- __Tools used:__ I uesed R to make the graphics. Packages I used were tidyverse, ggplot2, treemap, and dbplyr. [R Code](https://github.com/christiangallagher/Recidivism_Gallagher-R/blob/6c1e0cb636409e65ecfbae6e1bd8f30eb4dcc0c8/scripts/Recidivism-Gallagher.R)


- __Results:__ 
- I first made a graphic that was grouped by race and showed the age of release. I noticed right away that the black male inmates showed higher numbers than white male inmates. The highest number of inmates where in the black male group that were released at the age of 23 to 27. 

![Viz1](https://user-images.githubusercontent.com/89158977/145720296-1bd9dc66-95bf-4b17-a26c-6caf3445e8e9.png)

- I then made a heat map to look at the recidivism within 3 years of release compared to education level. The white inmates showed an equal spread across recidivism and education level. While the black inmates showed a higher recidivism rates in the less educated groups. The black inmates had a higher number of inmates not commiting crimes in the higher education group than white inmates.  

![Viz2](https://user-images.githubusercontent.com/89158977/145720681-0b3bef04-5f54-4702-9a39-2bc3db02cbdd.png)

- I made a treemap trying to compare level of education, time served, and race. No suprise the black popuation made up the majority of each one of these groups and subgroups. There are three different groups which are less than High School diploma, High School diploma, and at least some college. The subgroups are then made up of four sentienses which are less than 1 year, 1-2 years, greater than 2 to 3 years, and more than 3 years. The smallest group that made up the 2021 inmates was at least some college. Most inmates had a High School diploma or less. 

![tree](https://user-images.githubusercontent.com/89158977/145725573-ab078a9f-4706-4919-838c-0136a21301fe.png)

- When looking at the line chart the first thing I noticed was that females had no prison offenses of violent/sex crimes. The highest number of offenders for both race and sex fell into the category of property crime. Second highest would be violent/ non-sex offenses and drug. 

![Viz3](https://user-images.githubusercontent.com/89158977/145727729-7cc725d1-85bf-4cc8-869b-78f4512a421c.png)

- Overall I think its obvious that black people are incarcerated at a higher rate than white people, which does not make sense considering how marginal the black population is to the white population. I think it's important to look into the racial bias of the judicial system so people stop getting convicted based on their race. Inmates seemed to get sentensed to 1-2 years at a higher rate regardless of their race which is something I did not expect. In the future I would like to look at death row inmates and see what that population looks like. The link below is to the inncocence project which is an orginization that tries to help wrongfully convicted innmates get release from prison. 

- https://innocenceproject.org/exonerations-data/

