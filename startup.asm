шифр 419999 зс5^
лен 41(2048)^
лен 50(1001)^
лен 60(1002-ЗП)^
лен 61(1003-ЗП)^
eeв1а3
*name МКБ-тесты
*call yesmemory
*perso:50
*call LIBINIT:600000,40,тест
*main MKB/ASS
*execute
main_sw:        name    qf

;---------------------------------------
                const

;---------------------------------------
                cmd

;---------------------------------------
; Переключатель прерываний
;
interrupts:     hlt     1               ; Адрес 80800
 :              hlt     2
 :              hlt     3
 :              hlt     4
 :              hlt     5
 :              hlt     6
 :              hlt     7
 :              hlt     8
 :              hlt     9
 :              hlt     10
 :              hlt     11
 :              hlt     12
 :              hlt     13
 :              hlt     14
 :              hlt     15
 :              hlt     16
 :              hlt     17
 :              hlt     18
 :              hlt     19
 :              hlt     20
 :              hlt     21
 :              hlt     22
 :              hlt     23
 :              hlt     24
 :              hlt     25
 :              hlt     26
 :              hlt     27
 :              hlt     28
 :              hlt     29
 :              hlt     30
 :              hlt     31
 :              hlt     32
 :              hlt     33
 :              hlt     34
 :              hlt     35
 :              hlt     36
 :              hlt     37
 :              hlt     38
 :              hlt     39
 :              hlt     40
 :              hlt     41
 :              hlt     42
 :              hlt     43
 :              hlt     44
 :              hlt     45
 :              hlt     46
 :              hlt     47
 :              hlt     48
 :              hlt     49
 :              hlt     50
 :              hlt     51
 :              hlt     52
 :              hlt     53
 :              hlt     54
 :              hlt     55
 :              hlt     56
 :              hlt     57
 :              hlt     58
 :              hlt     59
 :              hlt     60
 :              hlt     61
 :              hlt     62
 :              hlt     63
 :              hlt     64

;---------------------------------------
; Служебные данные
;
s_mem:          atx                     ; 80840 - семафор памяти
                atx

 :              atx                     ; 80841 - версия микрокода
                atx     @a2

 :              atx                     ; 42 - резерв
 :              atx                     ; 43
 :              atx                     ; 44
 :              atx                     ; 45 - дата сборки
 :              atx                     ; 46 - d:\besm6
 :              atx                     ; 47 - \кт<n>.bin
 :              atx                     ; 48
 :              atx                     ; 49
 :              atx                     ; 4a
 :              atx                     ; 4b
 :              atx                     ; 4c
 :              atx                     ; 4d
 :              atx                     ; 4e
 :              atx                     ; 4f

;---------------------------------------
; Переключатель экстракодов
;
extracodes:     hlt     65              ; 80850
 :              hlt     66              ; 51
 :              hlt     67              ; 52
 :              hlt     68              ; 53

;---------------------------------------
; Служебные данные
;
 :              atx                     ; 80854
 :              atx                     ; 55
 :              atx                     ; 56
 :              atx                     ; 57
 :              atx                     ; 58
 :              atx                     ; 59
 :              atx                     ; 5a
 :              atx                     ; 5b
 :              atx                     ; 5c
 :              atx                     ; 5d
 :              atx                     ; 5e
csumm:          atx                     ; 5а - для контрольной
                atx                     ; суммы

;---------------------------------------
; Старт программы
;
test:        15 vtm     @80900          ; 80860
                its     15
                sti     15
                hlt     @100

                end
*call DISPLOAD
*end file
``````
еконец
