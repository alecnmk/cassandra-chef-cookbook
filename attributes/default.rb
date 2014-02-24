default[:cassandra] = {
  :cluster_name => "Test Cluster",
  :version => '2.0.3',
  :user => "cassandra",
  :jvm  => {
    :xms => 32,
    :xmx => 512
  },
  :limits => {
    :memlock => 'unlimited',
    :nofile  => 100000,
    :nproc => 32768,
    :as => 'unlimited'
  },
  :installation_dir => "/usr/local/cassandra",
  :bin_dir          => "/usr/local/cassandra/bin",
  :lib_dir          => "/usr/local/cassandra/lib",
  :conf_dir         => "/usr/local/cassandra/conf",
  # commit log, data directory, saved caches and so on are all stored under the data root. MK.
  :data_root_dir    => "/var/lib/cassandra/",
  :commitlog_dir    => "/var/lib/cassandra/",
  :log_dir          => "/var/log/cassandra/",
  :listen_address   => node[:ipaddress],
  :rpc_address      => node[:ipaddress],
  :max_heap_size    => nil,
  :heap_new_size    => nil,
  :num_tokens       => 256,
  :seeds            => [], # autodiscovered in tarball recipe
  :concurrent_reads => 16,
  :concurrent_writes => 16,
  :snitch           => 'SimpleSnitch'
}
default[:cassandra][:tarball] = {
  :url => "http://apache-mirror.telesys.org.ua/cassandra/#{default[:cassandra][:version]}/apache-cassandra-#{default[:cassandra][:version]}-bin.tar.gz",
  :md5 => "98d266fa0b84b50971e87f0c905bf2df"
}
