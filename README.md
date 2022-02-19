# Servers
サーバ構築に必要な機能やTool等のリソースを格納。
主に使用されるリソースは下記通り。
・Vagrant …仮想環境構築
・kustomize …配布ツール
・helm …配布ツール
・jenkins …CI/CD
・Prometheus …monitoring(データ収集・統合）
・Granfana …monitoring(データ分析・視覚化）

■jeus-kbsInfra
 Kubernetes環境。
 Vagrantで仮想環境を立ち上げ、仮想環境にkubernetesを構築する。
 Kubernetesではjenkinsを用いてモジュールをビルド・デプロイする。
 常にPrometheusがKubernetes環境の情報を収集し、Grafanaで分析・情報の視覚化を行う。