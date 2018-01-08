# Alacritty is simple, GPU-accelerated terminal built in Rust
# https://github.com/jwilm/alacritty
# Note: It must be built from source

# 1) Clone the source code:
git clone https://github.com/jwilm/alacritty.git ~/alacritty
cd alacritty

# 2) Make sure you have the right Rust compiler installed. Run
rustup override set stable
rustup update stable

# 3) With prerequisites installed, compiling Alacritty should be easy:
cargo build --release

# 4) Many linux distributions support desktop entries for adding applications to
#    system menus. To install the desktop entry for Alacritty, run
sudo cp target/release/alacritty /usr/local/bin # or anywhere else in $PATH
cp Alacritty.desktop ~/.local/share/applications

