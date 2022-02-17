说明：kubeasz调用asible一键部署二进制部署k8s1.23.1版本；其中$pwd/clusters/gcloud/hosts为ansible主机列表及主要变量，按需调整即可

1、配置ssh免秘钥、安装ansible等

2、手动执行download.sh下载二进制文件及docker镜像tar包

3、一键部署：./ezctl setup gcloud 90

4、分解部署：

             01 ##环境准备、生成证书等；
             
             02 ##安装etcd集群；
             
             03 ##安装docker；
             
             04 ##安装master节点；
             
             05 ##安装node节点；
             
             06 ##安装calico及calicoctl；
             
             07 ##安装ingress、coredsn、prometheus等
             
5、node节点扩容：./ezctl setup gcloud 22

6、一键清除k8s集群配置：./ezctl setup gcloud 99

备注：该集群配置文件向下兼容，经测试兼容生产在用1.20.9版本。替换方式：备份现有/opt/kubernetes/bin目录后，下载1.20.9版本http://x.x.x.x:8082/download/k8s-1.20.9/bin.tar.gz到/opt/kubernetes/下，重启各K8S组件即可。
