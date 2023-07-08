import fire
import transformers


def main(model_name: str):
    config = transformers.AutoConfig.from_pretrained(model_name, trust_remote_code=True)
    model = transformers.AutoModelForCausalLM.from_config(config, trust_remote_code=True)

    print("-- MODEL --")
    print(model)
    print("-- PARAMETERS --")
    for name, param in model.named_parameters():
        print(f"name: {name}, shape: {param.size()},  #elements: {param.numel()}")
    print("----------------")


if __name__ == "__main__":
    fire.Fire(main)
