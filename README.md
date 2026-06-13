# Изучение kubeadm

## Описание
В рамках изучения kubeadm написал деплоер на ansible

## Виртуальные машины

* gw-1 - Jump host
    * wireguard

* dc-1 - базовая инфраструктура для кластера
    * freeipa(DNS, NTP, KDC) 

* k8s cluster(kubeadm 1.34)
    * control-node-1
    * control-node-2
    * control-node-3
    * worker-node-1
    * worker-node-2

## Сеть

> Сеть построена через инструменты VirtualBox.

* Bridge(wifi)
    * gw-1 - для доступа выхода в интернет ВМок k8s. Для доступа с сети хоста через wireguard.

* Внутренняя сеть(k8s-mgmt-net) - для подключение по ssh, для взаимодействия нерабочей нагрузки внутри кластера
    * gw-1
    * dc-1
    * control-node
    * worker-node

* Внутренняя сеть(k8s-wrk-net) - кластерная сеть
    * control-node
    * worker-node
