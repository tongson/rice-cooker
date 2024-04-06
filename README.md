# Awesome single executable/object programs

BYOB(Build your own binaries) <br/>
Brings me back to my Gentoo & Source Mage days. <br/>

WARNING: Some of the recipes may build from the main/master/default branch. Do your own tests.
REQUIRES: [rr](https://github.com/tongson/rr)

Default installation directory is `$HOME/bin`.

Project              | What                   | In    | License   | Tags
---------------------|------------------------|-------|-----------|-----------------------------------------------
age                  | Modern encryption tool | Go    | BSD3      | `security` `secrets`
alertmanager         | Prometheus alerts      | Go    | APL2      | `ops` `prom`
amber                | Simple secrets         | Rust  | MIT       | `security` `secrets`
angle-grinder        | Log analysis           | Rust  | MIT       | `logs`
authelia             | SSO                    | Go    | APL2      | `web` `sso`
awsls                | list AWS resources     | Go    | MIT       | `ops` `aws` `cloud`
bat                  | cat(1) clone           | Rust  | APL2      | `coreutils`
below                | enhanced atop          | Rust  | APL2      | `coreutils` `ebpf`
bitcask              | Key/Value store        | Go    | MIT       | `database`
blacbox_exporter     | Prometheus exporter    | Go    | APL2      | `ops` `prom`
blake3               | FFI wrapper            | Rust  | MIT       | `ffi`
bupstash             | Encrypted backups      | Rust  | MIT       | `backup`
caddy                | Easy HTTP server       | Go    | APL2      | `http` `net`
cadvisor             | Container metrics      | Go    | APL2      | `container` `ops`
cashier              | OpenSSH CA             | Go    | MIT       | `ssh`
cheat                | CLI cheats             | Go    | MIT       | `docs`
cloudquery           | Osquery for the cloud  | Go    | MPL2      | `ops` `aws` `cloud`
coredns              | DNS server/forwarder   | Go    | APL2      | `dns`
dasel                | JSON, YAML, TOML tool  | Go    | MIT       | `json` `yaml` `toml`
dash                 | Posix shell            | C     | BSD3      | `shell`
delta                | Advanced diff          | Rust  | MIT       | `git`
deno                 | JS and TS runtime      | Rust  | MIT       | `js`
dhclient             | bare bones DHCP client | Go    | BSD3      | `net`
direnv               | shell environments     | Go    | MIT       | `shell`
dlv                  | golang delve(debugger) | Go    | MIT       | `debug`
dog                  | DNS cli like dig       | Rust  | EUPL      | `dns` `network`
elvish               | Expressive Shell       | Go    | BSD2      | `shell`
errcheck             | Did you check errors?  | Go    | MIT       | `go` `dev` `lint`
esshd                | Ephemeral sshd         | Go    | MIT       | `ssh`
evilnginx2           | Phisher                | Go    | GPL3      | `security` `redteam`
exa                  | ls(1) replacement      | Rust  | MIT       | `coreutils`
fd                   | findutils replacement  | Rust  | MIT       | `coreutils`
flowhouse            | Clickhouse/sflow       | Go    | APL2      | `net`
fzf                  | CLI fuzzy finder       | Go    | MIT       | `shell`
glow                 | markdown viewer        | Go    | MIT       | `docs`
go-init              | PID 1 init             | Go    | MIT       | `container` `init`
gokart               | golang security lint   | Go    | APL2      | `lint`
golines              | go code line splitter  | Go    | MIT       | `dev`
gopkgs               | list Go packages       | Go    | MIT       | `dev`
gopls                | golang tools gopls     | Go    | BSD3      | `dev`
gosec                | golang security lint   | Go    | APL2      | `lint`
gosh                 | sh and shfmt           | Go    | BSD3      | `shell`
grab                 | grab VCS sources       | Go    | APL2      | `vcs`
gron                 | make JSON greppable    | Go    | MIT       | `json`
grype                | container vuln scanner | Go    | APL2      | `security` `scanner`
gws                  | Google Workspace CLI   | Go    | MIT       | `gws`
havener              | kubectl wrapper        | Go    | MIT       | `k8s`
hck                  | cut(1) alternative     | Rust  | Unlicense | `coreutils`
hi                   | light grep(1)          | C     | MIT       | `coreutils`
hilbish              | Lua Shell              | Go    | MIT       | `shell` `lua`
hivemind             | Procfile supervisor    | Go    | MIT       | `init`
horust               | Process supervisor     | Rust  | MIT       | `init`
httpx                | HTTP toolkit           | Go    | MIT       | `http` `net`
hugo                 | Static site generator  | Go    | APL2      | `web` `docs`
hyperfine            | CLI benchmarks         | Rust  | APL2      | `benchmark`
jql                  | Lispy JSON processor   | Go    | MIT       | `json`
kapow                | shell script to HTTP   | Go    | APL2      | `web` `ops`
kind                 | local Kubernetes       | Go    | APL2      | `k8s`
kubeadm              | kubeadm                | Go    | APL2      | `k8s`
kubectl              | kubectl                | Go    | APL2      | `k8s`
kubelet              | kubelet                | Go    | APL2      | `k8s`
ladylua              | Lua 5.1 interpreter    | Go    | MIT       | `lua`
lefthook             | git hooks manager      | Go    | MIT       | `git` `ops`
ljredis              | FFI wrapper for Redis  | Rust  | MIT       | `ffi` `redis`
loki                 | Prometheus for logs    | Go    | AGPL3     | `logs`
lucid                | mock child process     | Rust  | MIT       | `shell`
lz4                  | Fast compression lib   | C     | BSD2      | `compress`
mailcat              | dummy SMTP server      | C     | MIT       | `smtp`
map                  | map from STDIN         | C     | MIT       | `shell`
micro                | Terminal-based editor  | Go    | MIT       | `editor`
minio                | S3 compatible server   | Go    | AGPL3     | `s3` `net`
mrsh                 | Real Posix shell       | C     | MIT       | `shell`
mtail                | Prometheus exporter    | Go    | APL2      | `logs` `prom`
node_exporter        | Prometheus exporter    | Go    | APL2      | `prom`
nushell              | Modern shell           | Rust  | MIT       | `shell`
oha                  | TUI HTTP load gen      | Rust  | MIT       | `http` `benchmark`
pexec                | fileless ELF execution | C     | MIT       | `shell`
procs                | ps replacement         | Rust  | MIT       | `coreutils`
prometheus           | metrics                | Go    | APL2      | `prom`
prom-aggr...-gw...   | Aggregating push gw    | Go    | LGPL3     | `prom`
promtail             | Grafana Loki agent     | Go    | AGPL3     | `prom` `logs`
pup                  | jq for HTML            | Go    | MIT       | `html`
pushgateway          | prometheus pushgateway | Go    | APL2      | `prom`
qgrep                | fast indexed grep(1)   | C++   | MIT       | `coreutils`
redwood              | HTTP proxy             | Go    | BSD2      | `http` `net`
redisjson            | JSON type for Redis    | Rust  | RSAL      | `json` `redis`
refmt                | json, yaml, toml       | Rust  | MIT       | `json` `yaml` `toml`
rewrite              | sponge(1) in Rust      | Rust  | MIT       | `coreutils`
rg                   | ripgrep                | Rust  | MIT       | `coreutils`
rr                   | shell script over SSH  | Go    | MIT       | `shell` `ops`
saw                  | AWS CloudWatch tool    | Go    | MIT       | `aws` `ops`
smtp_to_telegram     | SMTP relay to Telegram | Go    | MIT       | `smtp` `telegram` `alerts`
staticcheck          | Go linter              | Go    | MIT       | `go` `dev` `lint`
sops                 | simple secrets manager | Go    | MPL2      | `security` `secrets` `ops`
sqlite3              | No description needed  | C     | PD        | `database`
terraform            | Premier IaaC tool      | Go    | MPL2      | `ops` `cloud`
tflow2               | Netflow/Sflow analyzer | Go    | APL2      | `net` `logs`
topfew               | sort uniq head alt.    | Go    | GPL3      | `coreutils`
traefik              | Modern reverse proxy   | Go    | MIT       | `http` `net`
trim                 | remove prefix          | C     | MIT       | `coreutils`
unbound_exporter     | Prometheus exporter    | Go    | APL2      | `prom` `net`
stylua               | lua fmt                | Rust  | MPL2      | `lint` `lua`
swarp                | static http server     | Rust  | MIT       | `http` `net`
syft                 | BOM generator          | Go    | APL2      | `ops` `dev`
terrascan            | Vuln scanner           | Go    | APL2      | `cloud` `scanner` `security`
trivy                | Vuln scanner           | Go    | APL2      | `cloud` `scanner` `security`
vegeta               | HTTP load testing      | Go    | MIT       | `benchmark` `http`
webhook              | webhook to exec        | Go    | MIT       | `ops`
yq                   | YAML processor ala jq  | Go    | MIT       | `yaml`
yubikey-agent        | SSH-agent for YubiKey  | Go    | BSD3      | `ssh`
xh                   | cURL httpie alt        | Rust  | MIT       | `http`
zk                   | CLI notes              | Go    | BSD2      | `shell`
zoxide               | Smart cd               | Rust  | MIT       | `coreutils`


