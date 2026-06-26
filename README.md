# Ubuntu Auto Update Scripts

A small collection of Bash scripts to automatically update an Ubuntu system.

## Installation

Clone the repository:

```bash
git clone https://github.com/jnltedev/ubuntuautoupdatescripts.git
cd ubuntuautoupdatescripts
```

Make the scripts executable:

```bash
chmod +x *.sh
```

## Usage

Run the main script:

```bash
./update.sh
```

The main script automatically executes all `.sh` files in the repository (except `update.sh`) and displays whether each script completed successfully.

## Output

- ✅ Successfully – Script completed successfully.
- ❌ Error – An error occurred while running the script.

After all scripts have finished, you will see:

```text
🎉 All updates has been installed.
```

## Repository

`ubuntuautoupdatescripts`