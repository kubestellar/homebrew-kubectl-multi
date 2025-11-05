class KubectlMulti < Formula
    desc "Kubernetes plugin for managing multiple clusters"
    homepage "https://github.com/kubestellar/kubectl-plugin"
    version "0.0.3"
  
    on_macos do
      if Hardware::CPU.arm?
        url "https://github.com/kubestellar/kubectl-plugin/releases/download/v0.0.3/kubectl-multi_0.0.3_darwin_arm64.tar.gz"
        sha256 "375850f93a70c8809cdfe97a59a6a3ec26162714b93d30a0b3aa72934fd36996"
      else
        url "https://github.com/kubestellar/kubectl-plugin/releases/download/v0.0.3/kubectl-multi_0.0.3_darwin_amd64.tar.gz"
        sha256 "a890f17cec21ea961077245c97a906d623ca02b2b886c384f04d52109ef641f8"
      end
    end
  
    on_linux do
      if Hardware::CPU.arm?
        url "https://github.com/kubestellar/kubectl-plugin/releases/download/v0.0.3/kubectl-multi_0.0.3_linux_arm64.tar.gz"
        sha256 "8d249cf41fc2f6a2d3715143075f9eaec7dc732c68a00cf597a51f15c0fc808b"
      else
        url "https://github.com/kubestellar/kubectl-plugin/releases/download/v0.0.3/kubectl-multi_0.0.3_linux_amd64.tar.gz"
        sha256 "3ea715d855d2dec97a60a66d7e9b81bd14f66e910fc28fa06bd55c93548fbe9d"
      end
    end
  
    def install
      bin.install "kubectl-multi"
    end
  
    test do
      system "#{bin}/kubectl-multi", "version"
    end
  end