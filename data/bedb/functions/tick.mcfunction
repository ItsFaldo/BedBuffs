execute as @a store result score @s bedb.SleepTicks run data get entity @s SleepTimer
execute as @a[tag=!bedb.HasSlept] if score @s bedb.SleepTicks matches 95..99 run tag @s add bedb.HasSlept
execute as @a[tag=bedb.HasSlept] if score @s bedb.SleepTicks matches 100.. run say bufffff
execute as @a[tag=bedb.HasSlept] if score @s bedb.SleepTicks matches 100.. run scoreboard players add @s bedb.TotalSleeps 1
execute as @a[tag=bedb.HasSlept] if score @s bedb.SleepTicks matches 100.. run tag @s remove bedb.HasSlept
