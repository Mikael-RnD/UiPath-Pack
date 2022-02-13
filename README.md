# UiPath-Pack-Analyze
Github Action for running the workflow analyzer and packing all UiPath projects within a repository.

Example usage:

      # .nupkg packages are deployed to UiPath Orchestrator
      - name: UiPath Pack
        uses: Mikael-RnD/UiPath-Pack-Analyze@main
        with:
          # All inputs are required
          orchestratorUrl: # Link to UiPath Orchestrator instance
          orchestratorTenant: # Name of tenant where packages are deployed
          orchestratorFolder: # Orchestrator Folder path where packages are deployed
          orchestratorUsername: # Account for deploying with
          orchestratorPassword: # Password for basic authentication
