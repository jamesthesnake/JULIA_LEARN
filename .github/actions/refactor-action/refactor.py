import os

def refactor_code(file_path):
    with open(file_path, 'r') as file:
        content = file.read()
    refactored_content = content.replace('\t', '    ')
    with open(file_path, 'w') as file:
        file.write(refactored_content)

# Get the GitHub workspace directory from the environment variable
workspace_dir = os.environ['GITHUB_WORKSPACE']

# Refactor all Python files in the workspace
for root, dirs, files in os.walk(workspace_dir):
    for file in files:
        if file.endswith('.py'):
            refactor_code(os.path.join(root, file))
