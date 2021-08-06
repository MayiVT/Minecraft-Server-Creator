@echo off

echo do you wan't to create a minecraft server?


::installation server installed question
:choice
set /P c="Are you sure you want to continue (N if you don't wan't to do the installation or you have alredy installed)[Y/N]?"
if /I "%c%" EQU "Y" goto :servertype
if /I "%c%" EQU "N" goto :installservern
goto :choice


::server type number list
:servertype

echo [1] Spigot
echo [2] Bukkit
echo [3] Vanilla
echo [4] Magma
goto :servertypechoice


::server type chose
:servertypechoice
set /P c="Chose the server type number --> "
if /I "%c%" EQU "1" goto :numberinstalllistspigot
if /I "%c%" EQU "2" goto :numberinstalllistbukkit
if /I "%c%" EQU "3" goto :numberinstalllistvanilla
if /I "%c%" EQU "4" goto :magmainstall
goto :servertypechoice


::list for spigot
:numberinstalllistspigot
cls
echo ===SPIGOT===
echo [1] 1.17.1
echo [2] 1.16.5
echo [3] 1.15.5
echo [4] 1.14.4
echo [5] 1.13.2
echo [6] 1.12.2
echo [7] 1.11.2
echo [8] 1.10.2
echo [9] 1.9.4
echo [10] 1.8.8
echo [11] 1.7.10
goto :numberinstallselectspigot


::list for bukkit
:numberinstalllistbukkit
cls
echo ===BUKKIT===
echo [1] 1.17.1
echo [2] 1.16.5
echo [3] 1.15.5
echo [4] 1.14.4
echo [5] 1.13.2
echo [6] 1.12.2
echo [7] 1.11.2
echo [8] 1.10.2
echo [9] 1.9.4
echo [10] 1.8.8
echo "[11] 1.7.10"
goto :numberinstallselectbukkit


::list for vanilla
:numberinstalllistvanilla
cls
echo ===VANILLA===
echo [1] 1.17.1
echo [2] 1.16.5
echo [3] 1.15.5
echo [4] 1.14.4
echo [5] 1.13.2
echo [6] 1.12.2
echo [7] 1.11.2
echo [8] 1.10.2
echo [9] 1.9.4
echo [10] 1.8.8
echo [11] 1.7.10
goto :numberinstallselectvanilla


::list selector for spigot
:numberinstallselectspigot
set /P c="Select the number for the installation --> "
if /I "%c%" EQU "1" goto :spigotinstallservery1.17.1
if /I "%c%" EQU "2" goto :spigotinstallservery1.16.5
if /I "%c%" EQU "3" goto :spigotinstallservery1.15.2
if /I "%c%" EQU "4" goto :spigotinstallservery1.14.4
if /I "%c%" EQU "5" goto :spigotinstallservery1.13.2
if /I "%c%" EQU "6" goto :spigotinstallservery1.12.2
if /I "%c%" EQU "7" goto :spigotinstallservery1.11.2
if /I "%c%" EQU "8" goto :spigotinstallservery1.10.2
if /I "%c%" EQU "9" goto :spigotinstallservery1.9.4
if /I "%c%" EQU "10" goto :spigotinstallservery1.8.8
if /I "%c%" EQU "11" goto :spigotinstallservery1.7.10
goto :numberinstallselectspigot


::list selector for bukkit
:numberinstallselectbukkit
set /P c="Select the number for the installation --> "
if /I "%c%" EQU "1" goto :bukkitinstallservery1.17.1
if /I "%c%" EQU "2" goto :bukkitinstallservery1.16.5
if /I "%c%" EQU "3" goto :bukkitinstallservery1.15.2
if /I "%c%" EQU "4" goto :bukkitinstallservery1.14.4
if /I "%c%" EQU "5" goto :bukkitinstallservery1.13.2
if /I "%c%" EQU "6" goto :bukkitinstallservery1.12.2
if /I "%c%" EQU "7" goto :bukkitinstallservery1.11.2
if /I "%c%" EQU "8" goto :bukkitinstallservery1.10.2
if /I "%c%" EQU "9" goto :bukkitinstallservery1.9.4
if /I "%c%" EQU "10" goto :bukkitinstallservery1.8.8
if /I "%c%" EQU "11" goto :bukkitinstallservery1.7.10
goto :numberinstallselectbukkit


::list selector for vanilla
:numberinstallselectvanilla
set /P c="Select the number for the installation --> "
if /I "%c%" EQU "1" goto :vanillainstallservery1.17.1
if /I "%c%" EQU "2" goto :vanillainstallservery1.16.5
if /I "%c%" EQU "3" goto :vanillainstallservery1.15.2
if /I "%c%" EQU "4" goto :vanillainstallservery1.14.4
if /I "%c%" EQU "5" goto :vanillainstallservery1.13.2
if /I "%c%" EQU "6" goto :vanillainstallservery1.12.2
if /I "%c%" EQU "7" goto :vanillainstallservery1.11.2
if /I "%c%" EQU "8" goto :vanillainstallservery1.10.2
if /I "%c%" EQU "9" goto :vanillainstallservery1.9.4
if /I "%c%" EQU "10" goto :vanillainstallservery1.8.8
if /I "%c%" EQU "11" goto :vanillainstallservery1.7.10
goto :numberinstallselectvanilla

::magma install

cls
echo installing magma...
call curl https://github.com/magmafoundation/Magma/releases/download/v761933c-CUSTOM/Magma-761933c-STABLE-server.jar --output server.jar
echo INSTALLED

pause

goto :eulachose

::spigot installs
:spigotinstallservery1.7.10
cls
echo installing server 1.7.10
call curl https://cdn.getbukkit.org/spigot/spigot-1.7.10-SNAPSHOT-b1657.jar --output server.jar
echo INSTALLED

pause

goto :eulachose

:spigotinstallservery1.8.8
cls
echo installing server 1.8.8
call curl https://cdn.getbukkit.org/spigot/spigot-1.8.8-R0.1-SNAPSHOT-latest.jar --output server.jar
echo INSTALLED

pause

goto :eulachose

:spigotinstallservery1.9.4
cls
echo installing server 1.9.4
call curl https://cdn.getbukkit.org/spigot/spigot-1.9.4-R0.1-SNAPSHOT-latest.jar --output server.jar
echo INSTALLED

pause

goto :eulachose

:spigotinstallservery1.10.2
cls
echo installing server 1.10.2
call curl https://cdn.getbukkit.org/spigot/spigot-1.10.2-R0.1-SNAPSHOT-latest.jar --output server.jar
echo INSTALLED

pause

goto :eulachose

:spigotinstallservery1.11.2
cls
echo installing server 1.11.2
call curl https://cdn.getbukkit.org/spigot/spigot-1.11.2.jar --output server.jar
echo INSTALLED

pause

goto :eulachose

:spigotinstallservery1.12.2
cls
echo installing server 1.12.2
call curl https://cdn.getbukkit.org/spigot/spigot-1.12.2.jar --output server.jar
echo INSTALLED

pause

goto :eulachose

:spigotinstallservery1.13.2
cls
echo installing server 1.13.2
call curl https://cdn.getbukkit.org/spigot/spigot-1.13.2.jar --output server.jar
echo INSTALLED

pause

goto :eulachose

:spigotinstallservery1.14.4
cls
echo installing server 1.14.4
call curl https://cdn.getbukkit.org/spigot/spigot-1.14.4.jar --output server.jar
echo INSTALLED

pause

goto :eulachose

:spigotinstallservery1.15.2
cls
echo installing server 1.15.2
call curl https://cdn.getbukkit.org/spigot/spigot-1.15.2.jar --output server.jar
echo INSTALLED

pause

goto :eulachose

:spigotinstallservery1.16.5
cls
echo installing server 1.16.5
call curl https://cdn.getbukkit.org/spigot/spigot-1.16.5.jar --output server.jar
echo INSTALLED

pause

goto :eulachose

:spigotinstallservery1.17.1
cls
echo installing server 1.17.1
call curl https://cdn.getbukkit.org/spigot/spigot-1.17.1.jar --output server.jar
echo INSTALLED

pause

goto :eulachose


::bukit install links
:bukkitinstallservery1.7.10
cls
echo installing server 1.7.10
call curl https://cdn.getbukkit.org/craftbukkit/craftbukkit-1.7.10-R0.1-20140808.005431-8.jar --output server.jar
echo INSTALLED

pause

goto :eulachose

:bukkitinstallservery1.8.8
cls
echo installing server 1.8.8
call curl https://cdn.getbukkit.org/craftbukkit/craftbukkit-1.8.8-R0.1-SNAPSHOT-latest.jar --output server.jar
echo INSTALLED

pause

goto :eulachose

:bukkitinstallservery1.9.4
cls
echo installing server 1.9.4
call curl https://cdn.getbukkit.org/craftbukkit/craftbukkit-1.9.4-R0.1-SNAPSHOT-latest.jar --output server.jar
echo INSTALLED

pause

goto :eulachose

:bukkitinstallservery1.10.2
cls
echo installing server 1.10.2
call curl https://cdn.getbukkit.org/craftbukkit/craftbukkit-1.10.2-R0.1-SNAPSHOT-latest.jar --output server.jar
echo INSTALLED

pause

goto :eulachose

:bukkitinstallservery1.11.2
cls
echo installing server 1.11.2
call curl https://cdn.getbukkit.org/craftbukkit/craftbukkit-1.11.2.jar --output server.jar
echo INSTALLED

pause

goto :eulachose

:bukkitinstallservery1.12.2
cls
echo installing server 1.12.2
call curl https://cdn.getbukkit.org/craftbukkit/craftbukkit-1.12.2.jar --output server.jar
echo INSTALLED

pause

goto :eulachose

:bukkitinstallservery1.13.2
cls
echo installing server 1.13.2
call curl https://cdn.getbukkit.org/craftbukkit/craftbukkit-1.13.2.jar --output server.jar
echo INSTALLED

pause

goto :eulachose

:bukkitinstallservery1.14.4
cls
echo installing server 1.14.4
call curl https://cdn.getbukkit.org/craftbukkit/craftbukkit-1.14.4-R0.1-SNAPSHOT.jar --output server.jar
echo INSTALLED

pause

goto :eulachose

:bukkitinstallservery1.15.2
cls
echo installing server 1.15.2
call curl https://cdn.getbukkit.org/craftbukkit/craftbukkit-1.15.2.jar --output server.jar
echo INSTALLED

pause

goto :eulachose

:bukkitinstallservery1.16.5
cls
echo installing server 1.16.5
call curl https://cdn.getbukkit.org/craftbukkit/craftbukkit-1.16.5.jar --output server.jar
echo INSTALLED

pause

goto :eulachose

:bukkitinstallservery1.17.1
cls
echo installing server 1.17.1
call curl https://download.getbukkit.org/craftbukkit/craftbukkit-1.17.1.jar --output server.jar
echo INSTALLED

pause

goto :eulachose


::vanilla instalation links
:vanillainstallservery1.7.10
cls
echo installing server 1.7.10
call curl https://launcher.mojang.com/mc/game/1.7.10/server/952438ac4e01b4d115c5fc38f891710c4941df29/server.jar --output server.jar
echo INSTALLED

pause

goto :eulachose

:vanillainstallservery1.8.8
cls
echo installing server 1.8.8
call curl https://launcher.mojang.com/mc/game/1.8.8/server/5fafba3f58c40dc51b5c3ca72a98f62dfdae1db7/server.jar --output server.jar
echo INSTALLED

pause

goto :eulachose

:vanillainstallservery1.9.4
cls
echo installing server 1.9.4
call curl https://launcher.mojang.com/mc/game/1.9.4/server/edbb7b1758af33d365bf835eb9d13de005b1e274/server.jar --output server.jar
echo INSTALLED

pause

goto :eulachose

:vanillainstallservery1.10.2
cls
echo installing server 1.10.2
call curl https://launcher.mojang.com/mc/game/1.10.2/server/3d501b23df53c548254f5e3f66492d178a48db63/server.jar --output server.jar
echo INSTALLED

pause

goto :eulachose

:vanillainstallservery1.11.2
cls
echo installing server 1.11.2
call curl https://launcher.mojang.com/mc/game/1.11.2/server/f00c294a1576e03fddcac777c3cf4c7d404c4ba4/server.jar --output server.jar
echo INSTALLED

pause

goto :eulachose

:vanillainstallservery1.12.2
cls
echo installing server 1.12.2
call curl https://launcher.mojang.com/mc/game/1.12.2/server/886945bfb2b978778c3a0288fd7fab09d315b25f/server.jar --output server.jar
echo INSTALLED

pause

goto :eulachose

:vanillainstallservery1.13.2
cls
echo installing server 1.13.2
call curl https://launcher.mojang.com/v1/objects/3737db93722a9e39eeada7c27e7aca28b144ffa7/server.jar --output server.jar
echo INSTALLED

pause

goto :eulachose

:vanillainstallservery1.14.4
cls
echo installing server 1.14.4
call curl https://launcher.mojang.com/v1/objects/d0d0fe2b1dc6ab4c65554cb734270872b72dadd6/server.jar --output server.jar
echo INSTALLED

pause

goto :eulachose

:vanillainstallservery1.15.2
cls
echo installing server 1.15.2
call curl https://launcher.mojang.com/v1/objects/4d1826eebac84847c71a77f9349cc22afd0cf0a1/server.jar --output server.jar
echo INSTALLED

pause

goto :eulachose

:vanillainstallservery1.16.5
cls
echo installing server 1.16.5
call curl https://launcher.mojang.com/v1/objects/35139deedbd5182953cf1caa23835da59ca3d7cd/server.jar --output server.jar
echo INSTALLED

pause

goto :eulachose

:vanillainstallservery1.17.1
cls
echo installing server 1.17.1
call curl https://launcher.mojang.com/v1/objects/a16d67e5807f57fc4e550299cf20226194497dc2/server.jar --output server.jar
echo INSTALLED

pause

goto :eulachose






::no on java installation question
:installservern
echo cancelling
goto :installserveralredyinstalled

::question if it's alredy installed
:installserveralredyinstalled
set /P c=Is the java alredy installed[Y/N]?
if /I "%c%" EQU "Y" goto :yes
if /I "%c%" EQU "N" goto :no
goto :installserveralredyinstalled


::if not
:no

pause

exit


::if yes
:yes

echo continuing without install java with the setup

pause

cls

goto :eulachose



::chose to install eula
:eulachose
set /P c=Do You wan't to accept eula[Y/N]?
if /I "%c%" EQU "Y" goto :accepteula
if /I "%c%" EQU "N" goto :noaccepteula
goto :eulachose


::if eula accept = yes
:accepteula

cls

echo eula=true> eula.txt

goto :configuration


::if eula accept = no
:noaccepteula

echo cancelling operation...

pause

cls

del server.jar

echo all restored to normal

pause

exit


:: select ram usage and create the startserver.bat
:start

set /p minram=Say the minum of ram do you wan't to use (On GB) ;

set /p maxram=Say the maxium of ram do you wan't to use (On GB) ;

(
echo echo STARTING JAVA
echo java -DIReallyKnowWhatIAmDoingISwear -Xmx%maxram%G -Xms%minram%G -jar server.jar nogui
) > startserver.bat
pause

echo all configured starting server

start startserver.bat

del "%~f0" && echo All's done. I must exit! && pause > nul && exit


::server configuration (server.properties and bukkit.yml)
:configuration

echo configuration for server.propierties

echo if you wan't it for default you have to write the default value

set /p spawnprotection=Spawn protection (default 16) ;
set /p queryport=QueryPort (default 25565) ;
set /p forcegamemode=Force Gamemode (default false) ;
set /p allownether=Allow Nether (default true) ;
set /p gamemode=Gamemode (default survival) ;
set /p playeridletimeout=PlayerIdleTimeOut (default 0) ;
set /p difficulty=Difficulty (default easy) ;
set /p spawnmonsters=SpawnMonsters (default true) ;
set /p pvp=PvP (default true) ;
set /p enablestatus=Enable status (default true) ;
set /p hardcore=Hardcore (default false) ;
set /p commandblock=Command Block (default false) ;
set /p maxplayers=Max Players (default 20) ;
set /p serverport=Server Port (default 25565) ;
set /p serverip=Server-ip (Default  ) ;
set /p allowflight=Allow Flight (default false) ;
set /p levelname=Level Name (default world) ;
set /p viewdistance=View Distance (default 10) ;
set /p spawnanimals=Spawn animals (default true) ;
set /p generatestructures=Generate Structures (default true) ;
set /p onlinemode=Online Mode (default true) ;
set /p motd=Motd (say your minecraft server motd) ;
set /p allowend=Allow end (default true) ;

(
echo spawn-protection=%spawnprotection%
echo max-tick-time=60000
echo query.port=%queryport%
echo generator-settings=
echo sync-chunk-writes=true
echo force-gamemode=%forcegamemode%
echo allow-nether=%allownether%
echo enforce-whitelist=false
echo gamemode=%gamemode%
echo broadcast-console-to-ops=true
echo enable-query=false
echo player-idle-timeout=%playeridletimeout%
echo text-filtering-config=
echo difficulty=%difficulty%
echo broadcast-rcon-to-ops=true
echo spawn-monsters=%spawnmonsters%
echo op-permission-level=4
echo pvp=%pvp%
echo entity-broadcast-range-percentage=100
echo snooper-enabled=true
echo level-type=default
echo enable-status=%enablestatus%
echo hardcore=%hardcore%
echo enable-command-block=%commandblock%
echo network-compression-threshold=256
echo max-players=%maxplayers%
echo max-world-size=29999984
echo resource-pack-sha1=
echo function-permission-level=2
echo rcon.port=25575
echo server-port=%serverport%
echo debug=false
echo server-ip=%serverip%
echo spawn-npcs=true
echo allow-flight=%allowflight%
echo level-name=%levelname%
echo view-distance=%viewdistance%
echo resource-pack=
echo spawn-animals=%spawnanimals%
echo white-list=false
echo rcon.password=
echo generate-structures=%generatestructures%
echo online-mode=%onlinemode%
echo max-build-height=256
echo level-seed=
echo prevent-proxy-connections=false
echo use-native-transport=true
echo enable-jmx-monitoring=false
echo motd=%motd%
echo rate-limit=0
echo enable-rcon=false

) > server.properties

(
echo settings:
echo   allow-end: %allowend%
echo   warn-on-overload: true
echo   permissions-file: permissions.yml
echo   update-folder: update
echo   plugin-profiling: false
echo   connection-throttle: 4000
echo   query-plugins: true
echo   deprecated-verbose: default
echo   shutdown-message: Server closed
echo   minimum-api: none
echo spawn-limits:
echo   monsters: 70
echo   animals: 10
echo   water-animals: 15
echo   water-ambient: 20
echo   ambient: 15
echo chunk-gc:
echo   period-in-ticks: 600
echo ticks-per:
echo   animal-spawns: 400
echo   water-spawns: 1
echo   monster-spawns: 1
echo   water-ambient-spawns: 1
echo   ambient-spawns: 1
echo   autosave: 6000
echo aliases: now-in-commands.yml
) > bukkit.yml

goto :start