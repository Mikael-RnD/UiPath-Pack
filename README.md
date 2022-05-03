# UiPath-Pack
Github Action for packing all UiPath projects within a GitHub repository with a given project version number. Recommend the use of tags for project version number.

Example usage:

      # .nupkg packages are deployed to UiPath Orchestrator
      - name: UiPath Pack
        uses: Mikael-RnD/UiPath-Pack@main
        with:
          # All inputs are required
          orchestratorUrl: # Link to UiPath Orchestrator instance
          orchestratorTenant: # Name of tenant where packages are deployed
          orchestratorFolder: # Orchestrator Folder path where packages are deployed
          orchestratorApplicationId: # Applicaiton Id for External Application in Orchestrator
          orchestratorApplicationSecret: # Application Secret for External Application in Orchestrator
          orchestratorApplicationScope: # Scope for the assigned external applicaiton
          orchestratorLogicalName: # Password for basic authentication
          projectVersion: # Project version number
